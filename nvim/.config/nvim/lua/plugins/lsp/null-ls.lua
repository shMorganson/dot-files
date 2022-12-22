local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local M = {}

local formatting = null_ls.builtins.formatting
local completion = null_ls.builtins.completion

null_ls.setup({
  diagnostics_format = "[#{c}] #{m} (#{s})",
  temp_dir = "/var/tmp/",

  sources = {
  -- NOTE: FORMATTING
    formatting.beautysh,
    formatting.black,
    formatting.fixjson,
    -- formatting.lua_format.with({
    --   extra_args = {
    --     '--no-keep-simple-function-one-line', '--no-break-after-operator', '--column-limit=100', '--break-after-table-lb', '--ident-width=2'
    --   },
    -- }),
    formatting.yamlfmt,
    -- require("null-ls").builtins.formatting.stylua,
    -- require("null-ls").builtins.formatting.codespell,
    -- require("null-ls").builtins.formatting.fish_indent,
    -- require("null-ls").builtins.formatting.tidy,
    -- require("null-ls").builtins.formatting.black,
    -- require("null-ls").builtins.formatting.eslint_d,
    -- require("null-ls").builtins.formatting.markdownlint,
    -- require("null-ls").builtins.formatting.prettierd.with({
    --   extra_args = { "semi", "--single-quote", "--jsx-single-quote" },
    -- }),

    -- NOTE: diagnostics
    -- require("null-ls").builtins.diagnostics.eslint_d,
    -- require("null-ls").builtins.diagnostics.codespell,
    -- require("null-ls").builtins.diagnostics.fish,
    -- require("null-ls").builtins.diagnostics.luacheck.with({ extra_args = { "-g vim" } }),
    -- require("null-ls").builtins.diagnostics.proselint,
    -- require("null-ls").builtins.diagnostics.markdownlint,
    -- require("null-ls").builtins.diagnostics.jsonlint,
    -- require("null-ls").builtins.diagnostics.tidy,
    -- require("null-ls").builtins.diagnostics.mypy,
    -- require("null-ls").builtins.diagnostics.todo_comments,
    -- require("null-ls").builtins.diagnostics.ltrs,

    -- NOTE: completion
    completion.spell,
    completion.tags,
    completion.vsnip,

    -- NOTE: code_actions
    -- require("null-ls").builtins.code_actions.eslint_d,
    -- require("null-ls").builtins.code_actions.proselint,

    -- null_ls.builtins.hover.dictionary,
  },
})

function M.list_registered_providers_names(filetype)
  local s = require "null-ls.sources"
  local available_sources = s.get_available(filetype)
  local registered = {}
  for _, source in ipairs(available_sources) do
    for method in pairs(source.methods) do
      registered[method] = registered[method] or {}
      table.insert(registered[method], source.name)
    end
  end
  return registered
end

function M.list_registered_formatters(filetype)
  local registered_providers = M.list_registered_providers_names(filetype)
  local method = null_ls.methods.FORMATTING
  return registered_providers[method] or {}
end

function M.list_registered_linters(filetype)
  local registered_providers = M.list_registered_providers_names(filetype)
  local method = null_ls.methods.DIAGNOSTICS
  return registered_providers[method] or {}
end

return M

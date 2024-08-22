local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
  print("indent_blankline is etiher broken or not installed.")
  return
end

-- Variables
-- local opt = vim.opt

-- Options
-- opt.list = true
--  opt.listchars = {
--    space = "⋅",
--  }
--
-- Configuration for Indent_Blankline
require("ibl").setup {
  enabled = true,
    indent = {
      char = "▎",
      tab_char = "·",
      highlight = "IblIndent",
      smart_indent_cap = true,
      priority = 1,
      repeat_linebreak = true,
    },
    whitespace = {
      highlight = "IblWhitespace",
      remove_blankline_trail = true,
    },
    exclude ={
      filetypes = { "TelescopePrompt", "TelescopeResults" },
      buftypes = { "terminal" },
    },
    scope = {
      enabled = true,
      char = "·",
      show_start = true,
      show_end = true,
      exclude = {
        language = { "lua", "markdown" },
        node_type = {
          markdown = { "modeule", "chunk" }
        },
      },
    },
}

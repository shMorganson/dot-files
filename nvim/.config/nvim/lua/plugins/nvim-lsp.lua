return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "L3MON4D3/LuaSnip",
        -- "saghen/blink.cmp",
    },

    config = function()
        -- local cmp = require('cmp')
        local  capabilities = require('blink.cmp').get_lsp_capabilities()
        require("lspconfig").lua_ls.setup {capabilities = capabilities}
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
              "bashls",
              "lua_ls",
              "pyright",
              "terraformls",
              "tflint",
              "yamlls",
              "jsonls",
            },
            handlers = {
                function(server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end,

                zls = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.zls.setup({
                        root_dir = lspconfig.util.root_pattern(".git", "build.zig", "zls.json"),
                        settings = {
                            zls = {
                                enable_inlay_hints = true,
                                enable_snippets = true,
                                warn_style = true,
                            },
                        },
                    })
                    vim.g.zig_fmt_parse_errors = 0
                    vim.g.zig_fmt_autosave = 0

                end,
                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                runtime = { version = "Lua 5.1" },
                                diagnostics = {
                                    globals = { "bit", "vim", "it", "describe", "before_each", "after_each", "Snacks" },
                                }
                            }
                        }
                    }
                end,
                ["snyk_ls"] = function ()
                  local lspconfig = require("lspconfig")
                  lspconfig.snyk_ls.setup {
                    capabilities = capabilities,
                    settings = {
                      activateSnykCode = "true",
                      token = "69596d27-af2e-40ea-87ff-ebb75e9e2b35"
                    }
                  }
                end
            }
        })

        vim.diagnostic.config({
            -- update_in_insert = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
            signs = {
              text = {
                [vim.diagnostic.severity.ERROR] = '',
                [vim.diagnostic.severity.WARN] = '',
                [vim.diagnostic.severity.INFO] = '',
                [vim.diagnostic.severity.HINT] = '',
              },
            },
        })
    end
}

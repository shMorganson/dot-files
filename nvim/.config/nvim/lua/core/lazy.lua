local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "jeffkreeftmeijer/vim-dim",                            -- Updated Default theme tool.
  "lukas-reineke/indent-blankline.nvim",                 -- Indent Line
  {"nvim-lualine/lualine.nvim",                          -- Lualine/Status line
    dependencies = "kyazdani42/nvim-web-devicons",       -- Web Dev Icons
    lazy = false},
  "windwp/nvim-autopairs",                               -- Autopairs for neovim
  { "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate" },
  "nvim-treesitter/playground",                          -- Used for finding Highlights
  {
    "williamboman/mason.nvim",                           -- Mason LSP GUI
    "williamboman/mason-lspconfig.nvim",                 -- LSP installers
    "neovim/nvim-lspconfig"                              -- Neovim LSP config
  },
  { "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
  },
  "hrsh7th/cmp-nvim-lsp",                                -- CMP LSP
  "hrsh7th/cmp-buffer",                                  -- CMP Buffer
  "hrsh7th/nvim-cmp",                                    -- Nvim CMP completion plugin
  "hrsh7th/cmp-vsnip",                                   -- CMP vsnip plugin for CMP
  "hrsh7th/vim-vsnip",                                   -- Vim Vsnip needed for nvim-cmp
  "hrsh7th/vim-vsnip-integ",
  "hrsh7th/cmp-path",                                    -- File path plugin for nvim-cmp
  "hrsh7th/cmp-cmdline",                                 -- Command line completion
  "ray-x/cmp-treesitter",                                -- Treesitter plugin for nvim-cmp
  "tamago324/cmp-zsh",                                   -- zsh plugin for nvim-cmp
  "rafamadriz/friendly-snippets",                        -- Snippets for vsnip
  { "ojroques/nvim-lspfuzzy",
    dependencies = {
      "junegunn/fzf",
      "junegunn/fzf.vim"                                 -- to enable preview (optional)
    },
  },
  "google/vim-jsonnet",                                  -- jsonnet syntax highlighting
  { "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
  },
  { "goolord/alpha-nvim",                                  -- Neovim Dashboard plugin
    lazy = false,
    priority = 900,
  },
  "nvim-telescope/telescope-ui-select.nvim",               -- nvim-ui-selector as default
  "nvim-telescope/telescope-file-browser.nvim",            -- File Browser for Telescope
  "AckslD/nvim-neoclip.lua",                               -- Yank extension for Telescope
  "numToStr/Comment.nvim",                                 -- Comment plugin to do quick comments.
  "zane-/cder.nvim",                                       -- Change current working directory
  "yorik1984/vim-gitignore",                               -- Gitignore syntax highlighting
  "ahmedkhalf/project.nvim",                               -- Project plugin for Neovim
  { "kyazdani42/nvim-tree.lua",                            -- NvimTree
    dependencies = {
      'kyazdani42/nvim-web-devicons'
    },
    build = true,
  },
  "vimwiki/vimwiki",                                       -- Wiki note management system.
  { "iamcco/markdown-preview.nvim",                        -- vimwiki preview plugin
    build = 'cd app && yarn install',
    cmd = 'MarkdownPreview'
  },
  "lewis6991/gitsigns.nvim",                              -- Git Status for StatusLine
  "akinsho/toggleterm.nvim",                              -- Terminal tool
  "stevearc/dressing.nvim",                               -- Match UI schemes/tools
  "rcarriga/nvim-notify",                                 -- Notify for plugins
  "onsails/lspkind.nvim",                                 -- LSP Icons used in nvim-cmp.
  "kyazdani42/nvim-web-devicons",                         -- Dev Icons
  "jeffkreeftmeijer/vim-dim",                             -- Updated Default theme tool.
  "nat-418/scamp.nvim",
})

-- packer.nvim to lazy
--
-- setup ➡️ init
-- requires ➡️ dependencies
-- as ➡️ name
-- opt ➡️ lazy
-- run ➡️ build
-- lock ➡️ pin
-- disable=true ➡️ enabled = false
-- tag='*' ➡️ version="*"
-- after ℹ️ not needed for most use-cases. Use dependencies otherwise.
-- wants ℹ️ not needed for most use-cases. Use dependencies otherwise.
-- config don't support string type, use fun(LazyPlugin) instead.
-- module is auto-loaded. No need to specify


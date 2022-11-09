--------------------- PACKER ----------------------------------
local fn = vim.fn

-- Automatically install Packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/'wbthomason/packer.nvim",
    install_path,
  }
  print "Installing Packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Use a protected call so we don't error out on first use.
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have Packer use a popup window.
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install the plugins
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'               -- Packer can manage itself
  use 'lukas-reineke/indent-blankline.nvim'  -- Indent Line
  use {
    'nvim-lualine/lualine.nvim',

    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'windwp/nvim-autopairs'                -- Autopairs for neovim
  use 'godlygeek/tabular'                    -- Required for vim-markdown to work
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'           -- Used for finding Highlights
  use {                                      -- Used for configuring the nvim LSP.
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer'
  }
  use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" }})  -- Scala LSP.
  use 'hrsh7th/cmp-nvim-lsp'                 -- CMP LSP
  use 'hrsh7th/cmp-buffer'                   -- CMP Buffer
  use 'hrsh7th/nvim-cmp'                     -- Nvim CMP completion plugin
  use 'hrsh7th/cmp-vsnip'                    -- CMP vsnip plugin for CMP
  use 'hrsh7th/vim-vsnip'                    -- Vim Vsnip needed for nvim-cmp
  use 'hrsh7th/vim-vsnip-integ'
  use 'hrsh7th/cmp-path'                     -- File path plugin for nvim-cmp
  use 'hrsh7th/cmp-cmdline'                  -- Command line completion
  use 'ray-x/cmp-treesitter'                 -- Treesitter plugin for nvim-cmp
  use 'tamago324/cmp-zsh'                    -- zsh plugin for nvim-cmp

  use 'rafamadriz/friendly-snippets'         -- Snippets for vsnip
  use {
  'ojroques/nvim-lspfuzzy',
    requires = {
      {'junegunn/fzf'},
      {'junegunn/fzf.vim'},                  -- to enable preview (optional)
    },
  }
  use 'google/vim-jsonnet'                   -- jsonnet syntax highlighting

  -- Telescope Plugins
  use {                                      -- Telescope plugin
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-ui-select.nvim'      -- nvim-ui-selector as default
  use 'nvim-telescope/telescope-file-browser.nvim'   -- File Browser for Telescope
  use 'AckslD/nvim-neoclip.lua'                      -- Yank extension for Telescope
  use 'numToStr/Comment.nvim'                        -- Comment plugin to do quick comments.
  use 'zane-/cder.nvim'                              -- Change current working directory

  use 'yorik1984/vim-gitignore'              -- Gitignore syntax highlighting
  use 'ahmedkhalf/project.nvim'              -- Project plugin for Neovim
  use {
    'kyazdani42/nvim-tree.lua',              -- NvimTree
    requires = {
      'kyazdani42/nvim-web-devicons', opt = true
    },
  }
  use 'goolord/alpha-nvim'                   -- Neovim Dashboard plugin
  use 'simrat39/symbols-outline.nvim'        -- Symbols Outline for neovim
  use 'fladson/vim-kitty'                    -- Syntax highlighting for kitty.conf
  use 'vimwiki/vimwiki'                      -- Wiki note management system.
  use {'iamcco/markdown-preview.nvim', ft = 'markdown', run = 'cd app && yarn install', cmd = 'MarkdownPreview'} -- vimwiki preview plugin
  use 'lewis6991/gitsigns.nvim'              -- Git Status for StatusLine
  use 'akinsho/toggleterm.nvim'              -- Terminal tool
  use 'stevearc/dressing.nvim'               -- Match UI schemes/tools
  use 'rcarriga/nvim-notify'                 -- Notify for plugins
  use 'onsails/lspkind.nvim'                 -- LSP Icons used in nvim-cmp.
  use 'kyazdani42/nvim-web-devicons'         -- Dev Icons
  use 'ellisonleao/gruvbox.nvim'             -- Lua Gruvbox theme.
  use 'KritPaoIn/ayu.nvim'                   -- Ayu Theme


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

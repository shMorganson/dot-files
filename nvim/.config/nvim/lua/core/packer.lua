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

-- Autocommand that reloads Neovim whenever the plugin.lua is saved.
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
    augroup end
]]

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
  --use 'dense-analysis/ale'                   -- ALE for linting
  use 'godlygeek/tabular'                    -- Required for vim-markdown to work
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {                                      -- Used for configuring the nvim LSP.
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer'
    }
  use 'hrsh7th/cmp-nvim-lsp'                 -- CMP LSP
  use 'hrsh7th/cmp-buffer'                   -- CMP Buffer
  use 'hrsh7th/nvim-cmp'                     -- Nvim CMP completion plugin
  use 'hrsh7th/cmp-vsnip'                    -- CMP vsnip plugin for CMP
  use 'hrsh7th/vim-vsnip'                    -- Vim Vsnip needed for nvim-cmp
  use 'hrsh7th/vim-vsnip-integ'
  use 'hrsh7th/cmp-path'                     -- File path plugin for nvim-cmp
  use 'hrsh7th/cmp-cmdline'                  -- Command line completion
  use 'ray-x/cmp-treesitter'                 -- Treesitter plugin for nvim-cmp
  use 'tamago324/cmp-zsh'                    -- zsh plugin for nvim-cmpi
  use 'rafamadriz/friendly-snippets'         -- Snippets for vsnip
  use {
  'ojroques/nvim-lspfuzzy',
    requires = {
      {'junegunn/fzf'},
      {'junegunn/fzf.vim'},                  -- to enable preview (optional)
    },
  }
  use 'google/vim-jsonnet'                   -- jsonnet syntax highlighting
  use {                                      -- Telescope plugin
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'  -- File Browser for Telescope
  use 'yorik1984/vim-gitignore'              -- Gitignore syntax highlighting
  use 'ahmedkhalf/project.nvim'              -- Project plugin for Neovim
  use 'kdheepak/lazygit.nvim'                -- LazyGit for Neovim
  use {
    'kyazdani42/nvim-tree.lua',              -- NvimTree
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
  }
  use 'goolord/alpha-nvim'
  use 'wfxr/minimap.vim'                     -- Minimap for neovim
  use 'simrat39/symbols-outline.nvim'        -- Symbols Outline for neovim
  use 'shaunsingh/nord.nvim'                 -- Nord theme
  use 'fladson/vim-kitty'                    -- Syntax highlighting for kitty.conf
  use 'shift-d/scratch.nvim'                 -- Scratchpad for quick edit.
  use 'seblj/nvim-tabline'                   -- Tab management.
  use 'vimwiki/vimwiki'                      -- Wiki note management system.
  use {'iamcco/markdown-preview.nvim', ft = 'markdown', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
------------------- PACKER ----------------------------------
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
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
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
  use 'glepnir/dashboard-nvim'
  use 'lukas-reineke/indent-blankline.nvim'  -- Indent Line
  use {
  'nvim-lualine/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'tpope/vim-fugitive'                   -- Fugitive for Git
  use 'mbbill/undotree'                      -- Undo Tree for visual undo history
  use 'dense-analysis/ale'                   -- ALE for linting
  use 'godlygeek/tabular'                    -- Required for vim-markdown to work
  use 'plasticboy/vim-markdown'              -- Markdown plugin
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {                                      -- Used for configuring the nvim LSP.
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer'
    }
  use {
    'kyazdani42/nvim-tree.lua',              -- Nvim tree
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
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
  use 'shaunsingh/nord.nvim'                 -- nvim Nord theme
  use 'rmehri01/onenord.nvim'                -- Onenord theme
  use 'darfink/vim-plist'                    -- plist syntax support plugin
  use 'google/vim-jsonnet'                   -- jsonnet syntax highlighting
    use {
      'filipdutescu/renamer.nvim',
      branch = 'master',
      requires = { {'nvim-lua/plenary.nvim'}
      }
    }
  use {                                      -- Telescope plugin
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'yorik1984/vim-gitignore'              -- Gitignore syntax highlighting

  use({
	"catppuccin/nvim",
	as = "catppuccin"
  })
  --use 'goolord/alpha-nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

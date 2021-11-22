------------------- PACKER ----------------------------------
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'               -- Packer can manage itself
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
  use 'hrsh7th/cmp-path'                     -- File path plugin for nvim-cmp
  use 'ray-x/cmp-treesitter'                 -- Treesitter plugin for nvim-cmp
  use 'tamago324/cmp-zsh'                    -- zsh plugin for nvim-cmp

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
end)

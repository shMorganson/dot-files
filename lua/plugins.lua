------------------- PACKER ----------------------------------
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'               -- Packer can manage itself
  use 'wfxr/minimap.vim'                     -- Minimap
  use 'lukas-reineke/indent-blankline.nvim'  -- Indent Line
  use {
      'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'tpope/vim-fugitive'                   -- Fugitive for Git
  use 'mbbill/undotree'                      -- Undo Tree for visual undo history
  use 'dense-analysis/ale'                   -- ALE for linting
  use 'shaunsingh/nord.nvim'                 -- Nord theme for nvim
  use 'godlygeek/tabular'                    -- Required for vim-markdown to work
  use 'plasticboy/vim-markdown'              -- Markdown plugin
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'neovim/nvim-lspconfig'                -- Used for configuring the nvim LSP.
  use {
    'kyazdani42/nvim-tree.lua',              -- Nvim tree
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use {
  'ojroques/nvim-lspfuzzy',
    requires = {
      {'junegunn/fzf'},
      {'junegunn/fzf.vim'},                  -- to enable preview (optional)
    },
  }
  use {'neoclide/coc.nvim', branch = 'release'}
end)

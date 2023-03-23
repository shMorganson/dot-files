local opt = vim.opt  -- to set options.
local cmd = vim.cmd  -- set vim cmd.

opt.completeopt = "menuone,noselect"
opt.expandtab = true                  -- Use spaces instead of tabs
opt.hidden = true                     -- Enable background buffers
opt.ignorecase = true                 -- Ignore case
opt.joinspaces = false                -- No double spaces with join
opt.list = true                       -- Show some invisible characters
opt.number = true                     -- Show line numbers
opt.relativenumber = true             -- Relative line numbers
opt.scrolloff = 4                     -- Lines of context
opt.shiftround = true                 -- Round indent
opt.shiftwidth = 2                    -- Size of an indent
opt.sidescrolloff = 8                 -- Columns of context
opt.smartcase = true                  -- Do not ignore case with caitals
opt.smartindent = true                -- Insert indents automatically
opt.splitbelow = true                 -- Put new windows below current
opt.splitright = true                 -- Put new windows right of current
opt.tabstop = 2                       -- Number of spaces tabs count for
--opt.termguicolors = true              -- True color support
opt.wrap = false                      -- Disable line wrap
opt.mouse = 'a'                       -- Enables mouse support
opt.confirm = true                    -- Confirm before closing unsaved file
opt.cmdheight = 2                     -- Set the command heght to 2 lines
opt.showcmd = true
opt.shell = "zsh"
opt.conceallevel = 0                  -- Set the conceal level to 2.
opt.laststatus = 2                    -- Set the Global Statusline

-- Enabling Syntax Highlighting
cmd "syntax enable"
cmd "syntax on"



-- Use a protected call so we don't error out on first use.
local status_ok, toggleterm_check = pcall(require, "toggleterm")
if not status_ok then
  print("Toggleterm didn't load correctly or it isn't installed.")
  return
end

require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  --size = 20 | function(term)
  --  if term.direction == "horizontal" then
  --    return 15
  --  elseif term.direction == "vertical" then
  --    return vim.o.columns * 0.4
  --  end
  --end,
  open_mapping = [[<c-\>]],
  --on_open = fun(t: Terminal), -- function to run when the terminal opens
  --on_close = fun(t: Terminal), -- function to run when the terminal closes
  --on_stdout = fun(t: Terminal, job: number, data: string[], name: string) -- callback for processing output on stdout
  --on_stderr = fun(t: Terminal, job: number, data: string[], name: string) -- callback for processing output on stderr
  --on_exit = fun(t: Terminal, job: number, exit_code: number, name: string) -- function to run when terminal process exits
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1', -- the degree by which to darken to terminalcolour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = false,
  direction = 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell, -- change the default shell

-- highlights = {
--   Normal = {
--     ctermbg = 15,
--   },
--   NormalFloat = {
--     ctermbg = 15
--   },
-- },
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    border = 'curved',
    width = 200,
    height = 40,
    -- winblend = 3,
  }
}

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

local Terminal = require("toggleterm.terminal").Terminal
local newfloat = Terminal:new({
  direction = 'float',
    float_opts = {
      width = 200,
      height = 47,
      -- winblend = 3,
      highlights = {
        border = "Normal",
        background = "Normal",
      },
  },
  close_on_exit = true,
})

function _NEW_FLOAT_TOGGLE()
  newfloat:toggle()
end

local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  close_on_exit = true,
  hidden = true,
})

local lazydocker = Terminal:new({
  cmd = "lazydocker",
  dir = "git_dir",
  close_on_exit = true,
  hidden = true,
})

function _LAZYGIT_TOGGLE()
	lazygit:toggle()
end

function _LAZYDOCKER_TOGGLE()
  lazydocker:toggle()
end

local node = Terminal:new({ cmd = "htop", hidden = true })

function _HTOP_TOGGLE()
	node:toggle()
end

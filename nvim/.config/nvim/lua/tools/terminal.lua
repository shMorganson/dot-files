local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function _G.split_term()
  vim.api.nvim_command('split')
  vim.api.nvim_command('resize 15')
  vim.api.nvim_command('terminal')
end

function _G.vertsplit_term()
  vim.api.nvim_command('vsplit')
  vim.api.nvim_command('terminal')
end

cmd 'let running = jobwait([&channel], 0)[0] == -1'

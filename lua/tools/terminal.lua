local M = {}

local terminal_buffer_nr = nil
local terminal_win_nr = nil

M.terminal_toggle = function(height)
  if terminal_win_nr ~= nil and vim.fn.win_gotoid(terminal_win_nr) then
    if pcall(vim.cmd, 'hide') then
      return
    end
  end

  vim.cmd 'botright new'
  vim.cmd('resize ' .. height)

  if terminal_buffer_nr == nil or not pcall(vim.cmd, 'buffer ' .. terminal_buffer_nr) then
    vim.fn.termopen(vim.env.SHELL, { detach = 0 })
    terminal_buffer_nr = vim.fn.bufnr()
    vim.wo.number = false
    vim.wo.relativenumber = false
    vim.wo.signcolumn = 'no'
  end
  vim.cmd 'startinsert!'

  terminal_win_nr = vim.fn.win_getid()
end

return M

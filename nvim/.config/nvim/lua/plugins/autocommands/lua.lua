-- Setting local variables
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local reset_group = augroup('reset_group', {clear = true})

autocmd("TextYankPost", {
  callback = function ()
    vim.highlight.on_yank {on_visual = false}
  end
})

autocmd("TermClose", {
  command = "NvimTreeRefresh",
  group = reset_group,
  desc = "Refresh NvimTree on terminal close."
})

autocmd("BufRead,BufNewFile", {
  pattern = "config",
  command = "setf dosini",
  group = reset_group,
  desc = "Set dosini syntax for cofig files."
})

autocmd("BufRead,BufNewFile", {
  pattern = "text",
  command = "setlocal spell spelllang=en_us",
  group = reset_group,
  desc = "Set spell check to .txt files."
})

--autocmd("BufEnter", {
--  command = "++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
--  group = reset_group,
--  desc = "Close Neovim is NvimTree is only one left open."
--})

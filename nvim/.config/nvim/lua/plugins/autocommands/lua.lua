-- Setting local variables
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

--  Augroups
local reset_group = augroup('reset_group', {clear = true})
local splitwrap_aumgroup = augroup("MySplitWrap", { clear = true })

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

autocmd("BufWritePost", {
  pattern = "packer.lua",
  command = "source <afile> | PackerSync",
  group = reset_group,
  desc = "Auto sync Packer when the file is written to."
})

autocmd("BufEnter", {
  command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
  group = reset_group,
  desc = "Close Neovim is NvimTree is only one left open."
})

autocmd("WinNew", {
    command = "windo set wrap",
    group = splitwrap_aumgroup,
    desc = "Set wrap text when in split view.",
})

autocmd("BufRead,BufEnter", {
  command = "if winnr('$')  == 1 && bufname() == 'NvimTree_' . tabpagenr() | vim.wo.wrap = false | endif",
  group = splitwrap_aumgroup,
  desc = "Don't line wrap NvimTree."
})

autocmd("WinEnter", {
  group = splitwrap_aumgroup,
  desc = "Revet the text wrap when no longer in split.",
  callback = function()
    -- Get handlers for current windows, we need it to get the windows amount
    local active_windows = vim.api.nvim_list_wins()
    if #active_windows == 1 then
      vim.wo.wrap = false
    end
  end
})

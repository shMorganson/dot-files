local tabline_status_ok, nvim_tabline = pcall(require, "tabline")
if not tabline_status_ok then
  print("nvim-tabline is broken or not installed.")
  return
end

-- Custom Highlighting
vim.cmd [[highlight TabLine guibg=#2E3440 guifg=#4C566A]]
vim.cmd [[highlight TabLineSel guifg=#ECEFF4 guibg=#2E3440 gui=bold]]
vim.cmd [[highlight TabLineFill guifg=#ECEFF4 guibg=#2E3440]]
--TabLineSeparatorActive
--TabLineSeparatorInactive
--TabLineModifiedSeparatorActive
--TabLineModifiedSeparatorInactive
--TabLinePaddingActive
--TabLinePaddingInactive
vim.cmd [[highlight TabLineModifiedActive guibg=#2E3440 guifg=#ECEFF4]]
vim.cmd [[highlight TabLineModifiedInactive guibg=2E3440 guifg=#ECEFF4]]
vim.cmd [[highlight TabLineCloseActive guibg=#2E3440 guifg=#ECEFF4]]
vim.cmd [[highlight TabLineCloseInactive guibg=#2E3440 guifg=#ECEFF4]]


require('tabline').setup{
  no_name = 'No Name',    -- Name for buffers with no name
  modified_icon = '●',      -- Icon for showing modified buffer
  close_icon = '',         -- Icon for closing tab with mouse
  separator = "",          -- Separator icon on the left side
  padding = 3,              -- Prefix and suffix space
  color_all_icons = true,  -- Color devicons in active and inactive tabs
  always_show_tabs = false, -- Always show tabline
  right_separator = false,  -- Show right separator on the last tab
  show_index = false,       -- Shows the index of tab before filename
  show_icon = true,         -- Shows the devicon
}


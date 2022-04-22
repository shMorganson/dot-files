local tabline_status_ok, nvim_tabline = pcall(require, "tabline")
if not tabline_status_ok then
  print("nvim-tabline is broken or not installed.")
  return
end

-- Custom Highlighting
vim.cmd [[highlight TabLine guibg=#3c3836 guifg=#A89984 gui=NONE]]
vim.cmd [[highlight TabLineSel guifg=#ebdbb2 guibg=#282828 gui=bold]]
vim.cmd [[highlight TabLineFill guifg=#ECEFF4 guibg=#3C3836]]
vim.cmd [[highlight TabLineSeparatorActive guifg=#83A598 guibg=#282828]]
vim.cmd [[highlight TabLineSeparatorInactive guifg=#A89984 guibg=#3C3836]]
vim.cmd [[highlight TabLineModifiedSeparatorActive guifg=#B8BB26 guibg=#282828]]
vim.cmd [[highlight TabLineModifiedSeparatorInactive guifg=#A89984 guibg=#3C3836]]
--TabLinePaddingActive
--TabLinePaddingInactive
vim.cmd [[highlight TabLineModifiedActive guibg=#282828 guifg=#B8BB26]]
vim.cmd [[highlight TabLineModifiedInactive guibg=#3C3836 guifg=#A89984]]
vim.cmd [[highlight TabLineCloseActive guibg=#282828 guifg=#CC241D]]
vim.cmd [[highlight TabLineCloseInactive guibg=#3C3836 guifg=#A89984]]


require('tabline').setup{
  no_name = 'No Name',    -- Name for buffers with no name
  modified_icon = '●',      -- Icon for showing modified buffer
  close_icon = '',         -- Icon for closing tab with mouse
  separator = "▍",          -- Separator icon on the left side
  padding = 3,              -- Prefix and suffix space
  color_all_icons = true,  -- Color devicons in active and inactive tabs
  always_show_tabs = false, -- Always show tabline
  right_separator = false,  -- Show right separator on the last tab
  show_index = false,       -- Shows the index of tab before filename
  show_icon = true,         -- Shows the devicon
}


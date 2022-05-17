local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
  print("lualine.nvim is etiher broken or is not installed.")
  return
end

require('lualine').setup {
  options = {
    theme = everforest,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = '' },
    disabled_filetypes = { },
    globalstatus = true,
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'branch', 'filename' },
    lualine_c = {},
    lualine_x = { 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}

local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
  print("lualine.nvim is etiher broken or is not installed.")
  return
end

require('lualine').setup {
  options = {
    theme = 'spaceduck',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = '' },
    disabled_filetypes = { },
    globalstatus = true,
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { right = '' }, right_padding = 1 },
    },
    lualine_b = { 'branch' },
    lualine_c = {
      {
        'filename',
        path = 2,
      }
    },
    lualine_x = { 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = {
      { 'location', separator = { left = '' }, left_padding = 1 },
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

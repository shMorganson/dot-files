local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
  print("lualine.nvim is etiher broken or is not installed.")
  return
end

local colors = {
  nord0 = '#2E3440',
  nord1 = '#3B4252',
  nord2 = '#434C5E',
  nord3 = '#4C566A',
  nord4 = '#D8DEE9',
  nord5 = '#E5E9F0',
  nord6 = '#ECEFF4',
  nord7 = '#8FBCBB',
  nord8 = '#88C0D0',
  nord9 = '#81A1C1',
  nord10 = '#5E81AC',
  nord11 = '#BF616A',
  nord12 = '#D08770',
  nord13 = '#EBCB8B',
  nord14 = '#A3BE8C',
  nord15 = '#B48EAD',
}

local custom_nord_theme = {
  normal = {
    a = { fg = colors.nord1, bg = colors.nord7 },
    b = { fg = colors.nord6, bg = colors.nord1 },
    c = { fg = colors.nord6, bg = colors.nord3 },
    y = { fg = colors.nord6, bg = colors.nord1 },
    z = { fg = colors.nord6, bg = colors.nord1 },
  },
  
  insert = { 
    a = { fg = colors.nord1, bg = colors.nord9 }, 
    b = { fg = colors.nord6, bg = colors.nord1 },
    c = { fg = colors.nord6, bg = colors.nord3 },
    y = { fg = colors.nord6, bg = colors.nord1 },
    z = { fg = colors.nord6, bg = colors.nord1 },
  },
  visual = {
    a = { fg = colors.nord1, bg = colors.nord15 },
    b = { fg = colors.nord6, bg = colors.nord1 },
    c = { fg = colors.nord6, bg = colors.nord3 },
    y = { fg = colors.nord6, bg = colors.nord1 },
    z = { fg = colors.nord6, bg = colors.nord1 },
  },
  replace = {
    a = { fg = colors.nord1, bg = colors.nord11 },
    b = { fg = colors.nord6, bg = colors.nord1 },
    c = { fg = colors.nord6, bg = colors.nord3 },
    y = { fg = colors.nord6, bg = colors.nord1 },
    z = { fg = colors.nord6, bg = colors.nord1 },
  },
  command = {
    a = { fg= colors.nord1, bg = colors.nord14 },
    b = { fg = colors.nord6, bg = colors.nord1 },
    c = { fg = colors.nord6, bg = colors.nord3 },
    y = { fg = colors.nord6, bg = colors.nord1 },
    z = { fg = colors.nord6, bg = colors.nord1 },
  },

  inactive = {
    a = { fg = colors.nord6, bg = colors.nord0 },
    b = { fg = colors.nord3, bg = colors.nord3 },
    c = { fg = colors.nord3, bg = colors.nord3 },
    z = { fg = colors.nord6, bg = colors.nord0 },
  },
}

require('lualine').setup {
  options = {
    theme = custom_nord_theme,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode' },
    },
    lualine_b = { 'branch', 'filename' },
    lualine_c = {},
    lualine_x = { 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
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

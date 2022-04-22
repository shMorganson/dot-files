local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
  print("lualine.nvim is etiher broken or is not installed.")
  return
end

local colors = {
  gruvbox0 = '#1D2021',
  gruvbox1 = '#282828',
  gruvbox2 = '#32302F',
  gruvbox3 = '#3C3836',
  gruvbox4 = '#F9F5D7',
  gruvbox5 = '#FBF1C7',
  gruvbox6 = '#F2E5BC',
  gruvbox7 = '#8EC07C',
  gruvbox8 = '#689D6A',
  gruvbox9 = '#83A598',
  gruvbox10 = '#458588',
  gruvbox11 = '#9D0006',
  gruvbox12 = '#D65D0E',
  gruvbox13 = '#D79921',
  gruvbox14 = '#98971A',
  gruvbox15 = '#B16286',
}

local custom_gruvbox_theme = {
  normal = {
    a = { fg = colors.gruvbox1, bg = colors.gruvbox8 },
    b = { fg = colors.gruvbox6, bg = colors.gruvbox1 },
    c = { fg = colors.gruvbox6, bg = colors.gruvbox3 },
    y = { fg = colors.gruvbox1, bg = colors.gruvbox8 },
    z = { fg = colors.gruvbox1, bg = colors.gruvbox8 },
  },
  
  insert = { 
    a = { fg = colors.gruvbox1, bg = colors.gruvbox9 }, 
    b = { fg = colors.gruvbox6, bg = colors.gruvbox1 },
    c = { fg = colors.gruvbox6, bg = colors.gruvbox3 },
    y = { fg = colors.gruvbox1, bg = colors.gruvbox9 },
    z = { fg = colors.gruvbox1, bg = colors.gruvbox9 },
  },
  visual = {
    a = { fg = colors.gruvbox1, bg = colors.gruvbox15 },
    b = { fg = colors.gruvbox6, bg = colors.gruvbox1 },
    c = { fg = colors.gruvbox6, bg = colors.gruvbox3 },
    y = { fg = colors.gruvbox1, bg = colors.gruvbox15 },
    z = { fg = colors.gruvbox1, bg = colors.gruvbox15 },
  },
  replace = {
    a = { fg = colors.gruvbox4, bg = colors.gruvbox11 },
    b = { fg = colors.gruvbox6, bg = colors.gruvbox1 },
    c = { fg = colors.gruvbox6, bg = colors.gruvbox3 },
    y = { fg = colors.gruvbox4, bg = colors.gruvbox11 },
    z = { fg = colors.gruvbox4, bg = colors.gruvbox11 },
  },
  command = {
    a = { fg= colors.gruvbox1, bg = colors.gruvbox14 },
    b = { fg = colors.gruvbox6, bg = colors.gruvbox1 },
    c = { fg = colors.gruvbox6, bg = colors.gruvbox3 },
    y = { fg = colors.gruvbox1, bg = colors.gruvbox14 },
    z = { fg = colors.gruvbox1, bg = colors.gruvbox14 },
  },

  inactive = {
    a = { fg = colors.gruvbox6, bg = colors.gruvbox0 },
    b = { fg = colors.gruvbox3, bg = colors.gruvbox3 },
    c = { fg = colors.gruvbox3, bg = colors.gruvbox3 },
    z = { fg = colors.gruvbox6, bg = colors.gruvbox0 },
  },
}

require('lualine').setup {
  options = {
    theme = custom_gruvbox_theme,
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

local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
  print("lualine.nvim is etiher broken or is not installed.")
  return
end

-- Colors for the theme.
local colors = {
  blue   = '#399EE6',
  cyan   = '#4CBF99',
  black  = '#000000',
  white  = '#FAFAFA',
  red    = '#F07171',
  violet = '#A37ACC',
  grey   = '#A6ACB4',
  green  = '#86B300',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.white, bg = colors.blue },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white, bg = colors.white },
  },

  command = { a = {fg = colors.white, bg = colors.violet} },
  insert = { a = { fg = colors.white, bg = colors.green } },
  visual = { a = { fg = colors.white, bg = colors.cyan } },
  replace = { a = { fg = colors.white, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

require('lualine').setup {
    options = {
        theme = bubbles_theme,
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = '' },
        disabled_filetypes = {},
        globalstatus = true,
    },
    sections = {
      lualine_a = {
        { 'mode', separator = { left = '', right = '' }, right_padding = 1 },
      },
      lualine_b = { 'branch' , 'filename' },
      lualine_c = {},
      lualine_x = {},
      lualine_y = { 'progress', 'fileformat', 'filetype'},
      lualine_z = {
        { 'location', separator = { left = '', right = '' }, left_padding = 1 },
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

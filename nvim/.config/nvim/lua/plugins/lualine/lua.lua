local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
  print("lualine.nvim is etiher broken or is not installed.")
  return
end

-- Colors for the theme.
local colors = {
  blue   = '#458588',
  cyan   = '#83A598',
  black  = '#282828',
  white  = '#EBDBB2',
  red    = '#CC241D',
  violet = '#B16286',
  grey   = '#504945',
  green  = '#B8BB26',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.blue },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.green } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

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

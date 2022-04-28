local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
  print("lualine.nvim is etiher broken or is not installed.")
  return
end

local colors = {
  catppuccin0 = '#1A1826',  -- Black 1
  catppuccin1 = '#1E1E2E',  -- Black 2
  catppuccin2 = '#302D41',  -- Black 3
  catppuccin3 = '#6E6C7E',  -- Grey 0
  catppuccin4 = '#988BA2',  -- Grey 1
  catppuccin5 = '#D9E0EE',  -- White
  catppuccin6 = '#C3BAC6',  -- Grey 2
  catppuccin7 = '#ABE9B3',  -- Green
  catppuccin8 = '#B5E8E0',  -- Teal
  catppuccin9 = '#F8BD96',  -- Peach
  catppuccin10 = '#96CDFB', -- Blue
  catppuccin11 = '#DDB6F2', -- Mauve
  catppuccin12 = '#F28FAD', -- Red
  catppuccin13 = '#FAE3B0', -- Yellow
  catppuccin14 = '#E8A2AF', -- Maroon
  catppuccin15 = '#89DCEB', -- Sky
}

local custom_catppuccin_theme = {
  normal = {
    a = { fg = colors.catppuccin1, bg = colors.catppuccin10 },
    b = { fg = colors.catppuccin5, bg = colors.catppuccin1 },
    c = { fg = colors.catppuccin5, bg = colors.catppuccin2 },
    y = { fg = colors.catppuccin1, bg = colors.catppuccin10 },
    z = { fg = colors.catppuccin1, bg = colors.catppuccin10 },
  },
  
  insert = { 
    a = { fg = colors.catppuccin1, bg = colors.catppuccin7 }, 
    b = { fg = colors.catppuccin5, bg = colors.catppuccin1 },
    c = { fg = colors.catppuccin5, bg = colors.catppuccin2 },
    y = { fg = colors.catppuccin1, bg = colors.catppuccin7 },
    z = { fg = colors.catppuccin1, bg = colors.catppuccin7 },
  },
  visual = {
    a = { fg = colors.catppuccin1, bg = colors.catppuccin11 },
    b = { fg = colors.catppuccin5, bg = colors.catppuccin1 },
    c = { fg = colors.catppuccin5, bg = colors.catppuccin2 },
    y = { fg = colors.catppuccin1, bg = colors.catppuccin11 },
    z = { fg = colors.catppuccin1, bg = colors.catppuccin11 },
  },
  replace = {
    a = { fg = colors.catppuccin4, bg = colors.catppuccin12 },
    b = { fg = colors.catppuccin5, bg = colors.catppuccin1 },
    c = { fg = colors.catppuccin5, bg = colors.catppuccin2 },
    y = { fg = colors.catppuccin4, bg = colors.catppuccin12 },
    z = { fg = colors.catppuccin4, bg = colors.catppuccin12 },
  },
  command = {
    a = { fg= colors.catppuccin1, bg = colors.catppuccin9 },
    b = { fg = colors.catppuccin5, bg = colors.catppuccin1 },
    c = { fg = colors.catppuccin5, bg = colors.catppuccin2 },
    y = { fg = colors.catppuccin1, bg = colors.catppuccin9 },
    z = { fg = colors.catppuccin1, bg = colors.catppuccin9 },
  },

  inactive = {
    a = { fg = colors.catppuccin5, bg = colors.catppuccin0 },
    b = { fg = colors.catppuccin3, bg = colors.catppuccin2 },
    c = { fg = colors.catppuccin3, bg = colors.catppuccin3 },
    z = { fg = colors.catppuccin5, bg = colors.catppuccin0 },
  },
}

require('lualine').setup {
  options = {
    theme = custom_catppuccin_theme,
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

local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
  print("lualine.nvim is etiher broken or is not installed.")
  return
end

-- Color table for highlights
-- stylua: ignore
local colors = {
  bg       = '#2E3440',
  fg       = '#ECEFF4',
  yellow   = '#EBCB8B',
  cyan     = '#88C0D0',
  darkblue = '#5E81AC',
  green    = '#A3BE8C',
  orange   = '#D08770',
  violet   = '#B48EAD',
  magenta  = '#BF616A',
  blue     = '#81A1C1',
  red      = '#BF616A',
  aqua     = '#8FBCBB',
  grey     = '#D8DEE9',
}


local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = '',
    section_separators = '',
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighte by c theme .  So we
      -- are just setting default looks o statusline
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
    disabled_filetypes = { 'NvimTree' },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  function()
    return '▊'
  end,
  color = { fg = colors.green }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
}

ins_left {
  -- mode component
  function()
    -- auto change color according to neovims mode
    local mode_color = {
      n = colors.blue,
      i = colors.green,
      v = colors.violet,
      [''] = colors.blue,
      V = colors.blue,
      c = colors.magenta,
      no = colors.yellow,
      s = colors.orange,
      S = colors.orange,
      [''] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.yellow,
      ce = colors.yellow,
      r = colors.cyan,
      rm = colors.cyan,
      ['r?'] = colors.cyan,
      ['!'] = colors.yellow,
      t = colors.yellow,
    }
      vim.api.nvim_command('hi! LualineMode guifg=' .. mode_color[vim.fn.mode()] .. ' guibg=' .. colors.bg)
      return ''
  end,
  color = 'LualineMode',
  padding = { right = 0 },
}

ins_left(
  {'mode', color='LualineMode' }
)

ins_left {
  'branch',
  icon = '',
  color = { fg = colors.violet, gui = 'bold' },
}

ins_left {
  'filename',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.aqua, gui = 'bold' },
}

ins_left {
  -- filesize component
  'filesize',
  cond = conditions.buffer_not_empty,
}

-- Add components to right sections
ins_right {
  'o:encoding', -- option component same as &encoding in viml
  fmt = string.lower, -- I'm not sure why it's upper case either ;)
  cond = conditions.hide_in_width,
  color = { fg = colors.yellow},
}

ins_right {
  'fileformat',
  fmt = string.upper,
  icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
  color = { fg = colors.fg, gui = 'bold' },
}

ins_right {
  'filetype'
}

ins_right { 'progress', color = { fg = colors.fg, gui = 'bold' } }

ins_right {
  'location'
}

ins_right {
  function()
    return '▊'
  end,
  color = { fg = colors.green },
  padding = { left = 1 },
}

-- Now don't forget to initialize lualine
lualine.setup(config)

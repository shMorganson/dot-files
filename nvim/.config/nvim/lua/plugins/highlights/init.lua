local palette = require "plugins.highlights.catppuccin"

vim.cmd 'source ~/.config/nvim/lua/plugins/highlights/apple_ui.vim'
-- Nord Theme Settings
--vim.g.nord_contrast = true
--vim.g.nord_borders = false
--vim.g.nord_disable_background = false
--vim.g.nord_italic = false

-- Load the colorscheme
require('apple_ui').set()

-- Setting the theme
--vim.o.background = "dark"
--vim.cmd[[colorscheme apple_ui]]

--require("github-theme").setup({
--  theme_style = "light_default",
--  function_style = "italic",
--  sidebars = {"qf", "vista_kind", "terminal", "packer", "NvimTree"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  -- colors = {hint = "orange", error = "#ff0000"},

  -- Overwrite the highlight groups
  -- overrides = function(c)
  --  return {
  --    htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
  --    DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlight groups
  --    TSField = {},
  --  }
  -- end
--})

-- StatusLine Highlighting
local set_hl = function(group, options)
  local bg = options.bg == nil and '' or 'guibg=' .. options.bg
  local fg = options.fg == nil and '' or 'guifg=' .. options.fg
  local gui = options.gui == nil and '' or 'gui=' .. options.gui

  vim.cmd(string.format('hi %s %s %s %s', group, bg, fg, gui))
end

-- you can of course pick whatever colour you want, I picked these colours
-- because I use Gruvbox and I like them
--local highlights = {
--  {'StatusLine', { fg = '#FFFFFF', bg = '#2B64CF' }},
--  {'StatusLineNC', { fg = '#FFFFFF', bg = '#2B64CF' }},
--  {'Mode', { bg = '#928374', fg = '#1D2021', gui="bold" }},
--  {'LineCol', { bg = '#928374', fg = '#1D2021', gui="bold" }},
--  {'Git', { bg = '#504945', fg = '#EBDBB2' }},
--  {'Filetype', { bg = '#504945', fg = '#EBDBB2' }},
--  {'Filename', { bg = '#504945', fg = '#EBDBB2' }},
--  {'ModeAlt', { bg = '#504945', fg = '#928374' }},
--  {'GitAlt', { bg = '#3C3836', fg = '#504945' }},
--  {'LineColAlt', { bg = '#504945', fg = '#928374' }},
--  {'FiletypeAlt', { bg = '#3C3836', fg = '#504945' }},
--}

--for _, highlight in ipairs(highlights) do
--  set_hl(highlight[1], highlight[2])
--end

-- Calling custom highlights
vim.cmd 'source ~/.config/nvim/lua/plugins/highlights/custom_highlights.vim'

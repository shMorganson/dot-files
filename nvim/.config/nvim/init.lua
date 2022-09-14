-- Load the config for neovim
require('core')

--Settings for Neovide
vim.cmd [[
if exists("g:neovide")
  set guifont=FiraCode\ Nerd\ Font:h15
  let g:neovide_transparency=0.0
  let g:transparency = 1
  let g:neovide_background_color = '#24273a'.printf('%x', float2nr(255 * g:transparency))
  let g:neovide_input_use_logo=v:true
  let g:neovide_cursor_animation_length=0.03
  let g:neovide_cursor_trail_size=0.8

  let g:terminal_color_0 = "#6E738D"
  let g:terminal_color_8 = "#8087A2"
  let g:terminal_color_1 = "#ED8796"
  let g:terminal_color_9 = "#ED8796"
  let g:terminal_color_2 = "#A6DA95"
  let g:terminal_color_10 = "#A6DA95"
  let g:terminal_color_3 = "#EED49F"
  let g:terminal_color_11 = "#EED49F"
  let g:terminal_color_4 = "#8AADF4"
  let g:terminal_color_12 = "#8AADF4"
  let g:terminal_color_5 = "#F5BDE6"
  let g:terminal_color_13 = "#F5BDE6"
  let g:terminal_color_6 = "#91D7E3"
  let g:terminal_color_14 = "#91D7E3"
  let g:terminal_color_7 = "#CAD3F5"
  let g:terminal_color_15 = "#CAD3F5"
endif
]]

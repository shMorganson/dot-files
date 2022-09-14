--Settings for Neovide
vim.cmd [[
if exists("g:neovide")
  let g:neovide_transparency=0.0
  let g:transparency = 0.98
  let g:neovide_background_color = '#24273a'.printf('%x', float2nr(255 * g:transparency))
  let g:neovide_input_use_logo=v:true
  let g:neovide_cursor_animation_length=0.03
  let g:neovide_cursor_trail_size=0.8
  let g:neovide_floating_blur_amount_x = 2.0
  let g:neovide_floating_blur_amount_y = 2.0

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

vim.g.gui_font_default_size = 15
vim.g.gui_font_size = vim.g.gui_font_default_size
vim.g.gui_font_face = "FiraCode Nerd Font"

RefreshGuiFont = function()
  vim.opt.guifont = string.format("%s:h%s",vim.g.gui_font_face, vim.g.gui_font_size)
end

ResizeGuiFont = function(delta)
  vim.g.gui_font_size = vim.g.gui_font_size + delta
  RefreshGuiFont()
end

ResetGuiFont = function ()
  vim.g.gui_font_size = vim.g.gui_font_default_size
  RefreshGuiFont()
end

-- Call function on startup to set default value
ResetGuiFont()

-- Keymaps

local opts = { noremap = true, silent = true }

vim.keymap.set({'n', 'i'}, "<C-+>", function() ResizeGuiFont(1)  end, opts)
vim.keymap.set({'n', 'i'}, "<C-->", function() ResizeGuiFont(-1) end, opts)
vim.keymap.set({'n', 'i'}, "<C-BS>", function() ResetGuiFont() end, opts)

--Settings for Neovide
vim.cmd [[
if exists("g:neovide")
  let g:neovide_transparency=0.0
  let g:transparency = 0.98
  let g:neovide_background_color = '#0f111b'.printf('%x', float2nr(255 * g:transparency))
  let g:neovide_input_use_logo=v:true
  let g:neovide_cursor_animation_length=0.03
  let g:neovide_cursor_trail_size=0.8
  let g:neovide_floating_blur_amount_x = 2.0
  let g:neovide_floating_blur_amount_y = 2.0

  let g:terminal_color_0 = "#3B4252"
  let g:terminal_color_8 = "#4C566A"
  let g:terminal_color_1 = "#BF616A"
  let g:terminal_color_9 = "#BF616A"
  let g:terminal_color_2 = "#A3BE8C"
  let g:terminal_color_10 = "#A3BE8C"
  let g:terminal_color_3 = "#EBCB8B"
  let g:terminal_color_11 = "#BF616A"
  let g:terminal_color_4 = "#81A1C1"
  let g:terminal_color_12 = "#81A1C1"
  let g:terminal_color_5 = "#B48EAD"
  let g:terminal_color_13 = "#B48EAD"
  let g:terminal_color_6 = "#88C0D0"
  let g:terminal_color_14 = "#8FBCBB"
  let g:terminal_color_7 = "#E5E9F0"
  let g:terminal_color_15 = "#ECEFF4"
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

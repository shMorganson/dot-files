--Settings for Neovide
vim.cmd [[
if exists("g:neovide")
  let g:neovide_transparency=0.0
  let g:transparency= 1
  "let g:transparency = 0.98
  let g:neovide_background_color = '#FAFAFA'.printf('%x', float2nr(255 * g:transparency))
  let g:neovide_input_use_logo=v:true
  let g:neovide_cursor_animation_length=0.03
  let g:neovide_cursor_trail_size=0.8
  let g:neovide_floating_blur_amount_x = 2.0
  let g:neovide_floating_blur_amount_y = 2.0

  let g:terminal_color_0 = "#000000"
  let g:terminal_color_8 = "#686868"
  let g:terminal_color_1 = "#F07171"
  let g:terminal_color_9 = "#F07171"
  let g:terminal_color_2 = "#86B300"
  let g:terminal_color_10 = "#86B300"
  let g:terminal_color_3 = "#F2AE49"
  let g:terminal_color_11 = "#F2AE49"
  let g:terminal_color_4 = "#399EE6"
  let g:terminal_color_12 = "#399EE6"
  let g:terminal_color_5 = "#A37ACC"
  let g:terminal_color_13 = "#A37ACC"
  let g:terminal_color_6 = "#4CBF99"
  let g:terminal_color_14 = "#4CBF99"
  let g:terminal_color_7 = "#9A9A9A"
  let g:terminal_color_15 = "#D1D1D1"
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

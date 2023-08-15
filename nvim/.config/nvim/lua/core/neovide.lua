--Settings for Neovide
vim.cmd [[
if exists("g:neovide")
  let g:neovide_transparency=0.0
  let g:transparency = 1
  let g:neovide_background_color = '#f7f7f7'.printf('%x', float2nr(255 * g:transparency))
  let g:neovide_input_use_logo=v:true
  let g:neovide_cursor_animation_length=0.03
  let g:neovide_cursor_trail_size=0.8

  let g:terminal_color_0 = "#000000"
  let g:terminal_color_8 = "#7f7f7f"
  let g:terminal_color_1 = "#b22729"
  let g:terminal_color_9 = "#f26669"
  let g:terminal_color_2 = "#639808"
  let g:terminal_color_10 = "#9cd936"
  let g:terminal_color_3 = "#d4a046"
  let g:terminal_color_11 = "#d4a046"
  let g:terminal_color_4 = "#1b556b"
  let g:terminal_color_12 = "#488ba8"
  let g:terminal_color_5 = "#862753"
  let g:terminal_color_13 = "#c76090"
  let g:terminal_color_6 = "#348986"
  let g:terminal_color_14 = "#75c9c6"
  let g:terminal_color_7 = "#b1b1b1"
  let g:terminal_color_15 = "#f7f7f7"
endif
]]

vim.g.gui_font_default_size = 18
vim.g.gui_font_size = vim.g.gui_font_default_size
vim.g.gui_font_face = "SFMono Nerd Font"

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

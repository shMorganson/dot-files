--Settings for Neovide
vim.cmd [[
 if exists("g:neovide")
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

if vim.g.neovide then
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.

vim.g.neovide_transparency = 0.6
vim.g.neovide_show_border = false

vim.g.neovide_window_blurred = false

-- Setting the font.
vim.o.guifont = "SauceCodePro Nerd Font:h16"

-- Setting the line spacing.
vim.opt.linespace = 0


vim.g.neovide_theme = 'auto'
-- Floating Blur Amount
-- vim.g.neovide_floating_blur_amount_x = 1.0
-- vim.g.neovide_floating_blur_amount_y = 1.0

-- Floating Shadow
vim.g.neovide_floating_shadow = false
-- vim.g.neovide_floating_z_height = 10
-- vim.g.neovide_light_angle_degrees = 45
-- vim.g.neovide_light_radius = 5
--
-- vim.g.gui_font_default_size = 15
-- vim.g.gui_font_size = vim.g.gui_font_default_size
-- vim.g.gui_font_face = "SauceCodePro Nerd Font"

-- Theme
--vim.g.neovide_theme = 'auto'

-- Fix border and winbar scrolling glitches
vim.g.neovide_unlink_border_highlights = true

-- Show Border
vim.g.neovide_show_border = false

-- Remember Previous Window Size
vim.g.neovide_remember_window_size = true

-- Keymaps
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
vim.keymap.set('v', '<D-c>', '"+y') -- Copy
vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })
end

vim.g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
 vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set("n", "<C-=>", function()
 change_scale_factor(1.25)
end)
vim.keymap.set("n", "<C-->", function()
 change_scale_factor(1/1.25)
end)

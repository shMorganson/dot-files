local status_ok, lazygit = pcall(require, "lazygit")
if not status_ok then
  print("Lazygit.nvim is not installed or it is broken.")
  return
end

-- Variable to access global variables
local g = vim.g

-- Lazygit Settins
g.lazygit_floating_window_winblend = 0                           -- transparency of floating window
g.lazygit_floating_window_scaling_factor = 0.9                   -- scaling factor for floating window
g.lazygit_floating_window_corner_chars = {'╭', '╮', '╰', '╯'}    -- customize lazygit popup window corner characters
g.lazygit_floating_window_use_plenary = 0                        -- use plenary.nvim to manage floating window if available
g.lazygit_use_neovim_remote = 0                                  -- fallback to 0 if neovim-remote is not installed

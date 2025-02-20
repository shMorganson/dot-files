-- We're passing an env var from kitty, you can print it with:
-- :lua print(vim.env.NEOVIM_MODE)
-- Here we capture the environment variable to make it accessible to neovim
--
-- NOTE: To see all the files modified for skitty-notes just search for "neovim_mode"
vim.g.neovim_mode = vim.env.NEOVIM_MODE or "default"
vim.g.bullets_enable_in_empty_buffers = 0

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.options")
require("config.mappings")

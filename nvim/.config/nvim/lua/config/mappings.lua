local M = {}

-- Local Variables
local keymap = vim.api.nvim_set_keymap

-- nvim Mappings
keymap('', '<leader>c', '"+y', {}) -- Copy to clipboard.
keymap('', '<leader>p', '"*p', {}) -- Paste from clipboard.
keymap("i", "<C-u>", "<C-g>u<C-u>", {noremap = true})
keymap("i", "<C-w>", "<C-g>u<C-w>", {noremap = true})
keymap("n", "<leader>t", "<cmd>tabnew<CR>", {noremap = true})
keymap("n", "<leader>sc", "<cmd>setlocal spell spelllang=en_us<CR>",
       {noremap = true})
keymap("n", "<leader>cl", "<cmd>set cursorline<CR>", {noremap = true})
keymap("n", "<leader>lo", "<cmd>set nocursorline<CR>", {noremap = true})

-- jira.nvim Mappings
-- vim.keymap.set('n', '<leader>jt', require("jira.pickers.snacks").transitions, {}) -- Snacks
-- vim.keymap.set('n', '<leader>jv', '<cmd>Jira issue view<cr>', {})

-- Toggleterm Mappings
-- keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true})
-- keymap("t", ":q!", "<cmd><C-\\><C-n>:q!<CR>", {noremap = true})
-- keymap("n", "<leader>ht", ":call v:lua._HTOP_TOGGLE()<CR>", {noremap = true})
-- keymap("n", "<C-h>", "<cmd>ToggleTerm direction=horizontal size=17<CR>",
--        {noremap = true})
-- keymap("n", "<C-f>", ":call v:lua._NEW_FLOAT_TOGGLE()<CR>", {noremap = true})
-- keymap("n", "<leader>d", ":call v:lua._LAZYDOCKER_TOGGLE()<CR>", {noremap = true})

-- Markup Preview Mappings
-- keymap("n", "<leader>mp", "<cmd>MarkdownPreview<CR>", {noremap = true})
-- keymap("n", "<leader>qp", "<cmd>MarkdownPreviewStop<CR>", {noremap = true})

return M

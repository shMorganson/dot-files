-- Local Variables
local keymap = vim.api.nvim_set_keymap

-- nvim Mappings
keymap('', '<leader>c', '"+y', {
})
keymap("i", "<C-u>", "<C-g>u<C-u>", {
  noremap = true,
})
keymap("i", "<C-w>", "<C-g>u<C-w>", {
  noremap = true,
})
keymap("n", "<leader>t", "<cmd>tabnew<CR>", {
  noremap = true,
})
keymap("n", "<leader>sc", "<cmd>setlocal spell spelllang=en_us<CR>", {
  noremap = true,
})

-- Toggleterm Mappings
keymap("t", "<Esc>", "<C-\\><C-n>", {
  noremap = true,
})
keymap("t", ":q!", "<cmd><C-\\><C-n>:q!<CR>", {
  noremap = true,
})
keymap("n", "<leader>lg", ":call v:lua._LAZYGIT_TOGGLE()<CR>", {
  noremap = true,
})
keymap("n", "<leader>ht", ":call v:lua._HTOP_TOGGLE()<CR>", {
  noremap = true,
})
keymap("n", "<C-h>", "<cmd>ToggleTerm direction=horizontal size=17<CR>", {
  noremap = true,
})
keymap("n", "<C-f>", ":call v:lua._NEW_FLOAT_TOGGLE()<CR>", {
  noremap = true,
})

-- Alpha Mappings
keymap("n", "<leader>en", "<cmd>:ene <BAR> startinsert <CR>", {
  noremap = true,
})
keymap("n", "<leader>u", "<cmd>PackerUpdate<CR>", {
  noremap = true,
})
keymap("n", "<leader>ev", "<cmd>edit ~/.config/nvim/lua/core/init.lua<CR>", {
  noremap = true,
})
keymap("n", "<leader>q", "<cmd>exit<CR>", {
  noremap = true,
})
keymap("n", "<leader>ip", "<cmd>e: ~/.config/nvim/lua/core/packer.lua<CR>", {
  noremap = true,
})

-- Telescope
keymap("n", "<leader>fm", "<cmd>Telescope marks<CR>", {
   noremap = true,
})
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {
  noremap = true,
})
keymap("n", "<leader>fh", "<cmd>Telescope oldfiles<CR>", {
  noremap = true,
})
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", {
  noremap = true,
})
keymap("n", "<leader>gs", "<cmd>Telescope git_status<CR>", {
  noremap = true,
})
keymap("n", "<leader>bl", "<cmd>Telescope buffers<CR>", {
  noremap = true,
})
keymap("n", "<leader>fp", "<cmd>Telescope projects<CR>", {
  noremap = true,
})
keymap("n", "<leader>fb", "<cmd>Telescope file_browser<CR>", {
  noremap = true,
})

-- Nvim Tree Mappings
keymap ("n", "<leader>f", "<cmd>NvimTreeOpen<CR>", {
  noremap = true,
})
keymap ("n", "<leader>ft", "<cmd>NvimTreeToggle<CR>", {
  noremap = true,
})
keymap ("n", "<leader>fs", "<cmd>NvimTreeFocus<CR>", {
  noremap = true,
})

-- symbols-outline Mappings
keymap ("n", "<leader>so", "<cmd>SymbolsOutline<CR>", {
  noremap = true,
})

-- Markup Preview Mappings
keymap ("n", "<leader>mp", "<cmd>MarkdownPreview<CR>", {
  noremap = true,
})
keymap ("n", "<leader>qp", "<cmd>MarkdownPreviewStop<CR>", {
  noremap = true
})

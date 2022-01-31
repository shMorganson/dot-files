local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- nvim Mappings
map('', '<leader>c', '"+y')       -- Copy to clipboard in normal, visual, select and operator modes
map('i', '<C-u>', '<C-g>u<C-u>')  -- Make <C-u> undo-friendly
map('i', '<C-w>', '<C-g>u<C-w>')  -- Make <C-w> undo-friendly

map('n', '<C-l>', '<cmd>noh<CR>')    -- Clear highlights
map('n', '<leader>o', 'm`o<Esc>``')  -- Insert a newline in normal mode

-- Terminal Mappings
map('t', '<Esc>', '<C-\\><C-n>')  -- Exit Terminal
map('t', ':q!', '<cmd><C-\\><C-n>:q!<CR>')  -- Exit Terminal
map("n", "<C-v>", ":call v:lua.vertsplit_term()<CR>", {noremap = true})  -- Vertical Terminal
map("n", "<C-t>", ":call v:lua.split_term()<CR>", {noremap = true})  -- Horizontal Terminal

-- Alpha Mappings
map('n', '<leader>en', '<cmd>:ene <BAR> startinsert <CR>')
map('n', '<leader>u', '<cmd>PackerUpdate<CR>')
map('n', '<leader>ev', '<cmd>edit ~/.config/nvim/lua/core/init.lua<CR>')
map('n', '<leader>q', '<cmd>exit<CR>')
map('n', '<leader>ip', '<cmd>e: ~/.config/nvim/lua/core/packer.lua<CR>')

-- Fugitive Mappings
map('n', '<leader>g', '<cmd>Git<CR>', {noremap = true})
map('n', '<leader>gp', '<cmd>Git push<CR>')

-- Telescope
map('n', '<leader>fm', '<cmd>Telescope marks<CR>')
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
map('n', '<leader>fh', '<cmd>Telescope oldfiles<CR>')
map('n', '<leader>gc', '<cmd>Telescope git_commits<CR>')
map('n', '<leader>gs', '<cmd>Telescope git_status<CR>', {noremap = true})
map('n', '<leader>bl', '<cmd>Telescope buffers<CR>')
map('n', '<leader>fp', '<cmd>Telescope projects<CR>')
map('n', '<leader>fb', '<cmd>Telescope file_browser<CR>',{ noremap = true })  -- File Browser in Telescope

-- Nvim Tree Mappings
map('n', '<leader>ft', '<cmd>NvimTreeOpen<CR>', {noremap = true})

-- Undotree
map('n', '<leader>ut', '<cmd>UndotreeToggle<CR>')

-- LazyGit Mappings
map('n', '<leader>gg', '<cmd>LazyGit<CR>', {noremap = true})

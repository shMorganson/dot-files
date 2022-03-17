local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- nvim Mappings
map('', '<leader>c', '"+y')       -- Copy to clipboard in normal, visual, select and operator modes
map('i', '<C-u>', '<C-g>u<C-u>')  -- Make <C-u> undo-friendly
map('i', '<C-w>', '<C-g>u<C-w>')  -- Make <C-w> undo-friendly
map('n', '<leader>t', '<cmd>tabnew<CR>', {noremap = true})  -- Open a new tab
map('n', '<leader>sc', '<cmd>setlocal spell spelllang=en_us<CR>', {noremap = true})  -- Turn on spell check for the buffer.
map('n', '<C-l>', '<cmd>noh<CR>')    -- Clear highlights
map('n', '<leader>o', 'm`o<Esc>``')  -- Insert a newline in normal mode

-- Terminal Mappings
map('t', '<Esc>', '<C-\\><C-n>')  -- Exit Terminal
map('t', ':q!', '<cmd><C-\\><C-n>:q!<CR>')  -- Exit Terminal
map("n", "<C-v>", ":call v:lua.vertsplit_term()<CR>", {noremap = true})  -- Vertical Terminal
map("n", "<C-t>", ":call v:lua.split_term()<CR>", {noremap = true})  -- Horizontal Terminal
map("n", "<C-n>", ":call v:lua.new_tab_term()<CR>", {noremap = true}) -- New Tab Terminal

-- Alpha Mappings
map('n', '<leader>en', '<cmd>:ene <BAR> startinsert <CR>')
map('n', '<leader>u', '<cmd>PackerUpdate<CR>')
map('n', '<leader>ev', '<cmd>edit ~/.config/nvim/lua/core/init.lua<CR>')
map('n', '<leader>q', '<cmd>exit<CR>')
map('n', '<leader>ip', '<cmd>e: ~/.config/nvim/lua/core/packer.lua<CR>')

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
map('n', '<leader>f', '<cmd>NvimTreeOpen<CR>', {noremap = true})

-- LazyGit Mappings
map('n', '<leader>gg', '<cmd>LazyGit<CR>', {noremap = true})

-- symbols-outline Mappings
map('n', '<leader>so', '<cmd>SymbolsOutline<CR>', {noremap = true})

-- Markup Preview Mappings
map('n', '<leader>mp', '<cmd>MarkdownPreview<CR>', {noremap = true})
map('n', '<leader>qp', '<cmd>MarkdownPreviewStop<CR>', {noremap = true})

-- Buffline Mappings
map('n', 'b[', '<cmd>BufferLineCycleNext<CR>', {noremap = true})
map('n', 'b]', '<cmd>BufferLineCyclePrev<CR>', {noremap = true})
map('n', 'qq', '<cmd>bdelete<CR>', {noremap = true})

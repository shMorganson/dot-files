local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- nvim Mappings
map('', '<leader>c', '"+y')       -- Copy to clipboard in normal, visual, select and operator modes
map('i', '<C-u>', '<C-g>u<C-u>')  -- Make <C-u> undo-friendly
map('i', '<C-w>', '<C-g>u<C-w>')  -- Make <C-w> undo-friendly

-- <Tab> to navigate the completion menu
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

map('n', '<C-l>', '<cmd>noh<CR>')    -- Clear highlights
map('n', '<leader>o', 'm`o<Esc>``')  -- Insert a newline in normal mode

-- Nvimtree mapping
map('', '<leader>n', '<cmd>NvimTreeToggle<CR>')  -- Toggle nvimTree
map('', '<leader>r', '<cmd>NvimTreeRefresh<CR>')  -- Refresh nvimTree
map('', '<leader>f', '<cmd>NvimTreeFindFile<CR>') -- Find File

-- Terminal Mappings
map('t', '<Esc>', '<C-\\><C-n>')  -- Exit Terminal
map('t', ':q!', '<cmd><C-\\><C-n>:q!<CR>')  -- Exit Terminal
map("n", "<C-v>", ":call v:lua.vertsplit_term()<CR>", {noremap = true})  -- Vertical Terminal
map("n", "<C-t>", ":call v:lua.split_term()<CR>", {noremap = true})  -- Horizontal Terminal

-- Renamer
map('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
map('n', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
map('v', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })

-- Dashboard Mappings
map('n', '<leader>ss', '<cmd>SessionSave<CR>')
map('n', '<leader>l', '<cmd>SessionLoad<CR>')
map('n', '<leader>ff', '<cmd>Files<CR>')
map('n', '<leader>fh', '<cmd>History<CR>')
map('n', '<leader>en', '<cmd>DashboardNewFile<CR>')
map('n', '<leader>u', '<cmd>PackerUpdate<CR>')
map('n', '<leader>ev', '<cmd>edit $MYVIMRC<CR>')
map('n', '<leader>q', '<cmd>exit<CR>')

--nmap <Leader>ss :<C-u>SessionSave<CR>
--nmap <Leader>sl :<C-u>SessionLoad<CR>

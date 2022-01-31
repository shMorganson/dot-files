vim.cmd [[
  
  augroup _term
    autocmd!
    autocmd TermOpen * setlocal nonumber norelativenumber
    autocmd TermOpen * startinsert
  augroup end

  augroup _lazygit
    autocmd!
    autocmd TermClose * NvimTreeRefresh
  augroup end
]]

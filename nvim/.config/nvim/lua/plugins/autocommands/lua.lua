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

  augroup _awsdosini
    autocmd!
    autocmd BufRead,BufNewFile config setf dosini
  augroup end

  augroup _spellchecking
    autocmd!
    autocmd BufRead,BufNewFile *.txt setlocal spell spelllang=en_us
  augroup end
]]

--augroup _dosini
--  autocmd! 
--  autocmd BufRead,BufNewFile *.conf setf dosini
--  augroup end



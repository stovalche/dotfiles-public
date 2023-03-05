vim.opt.splitbelow = true
vim.opt.splitright = true

vim.cmd [[
augroup exe_code
  autocmd!
  " execute python code 
  autocmd FileType python nnoremap <silent> <buffer> <leader>r
  \ <esc>:sp<cr>:term python %<cr>:startinsert<cr>

  " execute c code
  autocmd FileType c nnoremap <silent> <buffer> <leader>r
  \ <esc>:sp<cr>:term gcc % && ./a.out<cr>:startinsert<cr>
  
  " execute cpp code
  autocmd FileType cpp nnoremap <silent> <buffer> <leader>r
  \ <esc>:sp<cr>:term g++ % && ./a.out<cr>:startinsert<cr>

  "execute javascript code
  autocmd FileType javascript nnoremap <silent> <buffer> <leader>r
  \ <exc>:sp<cr>:term node %<cr>:startinsert<cr>

  "execute bash code
  autocmd FileType sh nnoremap <silent> <buffer> <leader>r
  \ <esc>:sp<cr>:term chmod +x % && bash %<cr>:startinsert<cr>

  "execute java code
  autocmd FileType java nnoremap <silent> <buffer> <leader>r
  \ <esc>:sp<cr>:term java %<cr>:startinsert<cr>

  "execute cpp code
  autocmd FileType cpp nnoremap <silent> <buffer> <leader>r
  \ <esc>:sp<cr>:term g++ % && ./a.out<cr>:startinsert<cr>
  
  "execute octave/matlab code
  autocmd FileType matlab nnoremap <silent> <buffer> <leader>r
  \ <esc>:sp<cr>:term octave %<cr>:startinsert<cr>
  
  "compiling arduino files
  autocmd FileType arduino nnoremap <silent> <buffer> <leader>r
  \ <esc>:sp<cr>:term $HOME/Scripts/shell/unocompiler/.compiler.sh %<cr>:startinsert<cr>
augroup END
]]

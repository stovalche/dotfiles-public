vim.cmd [[
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
]]

-- copy to clipboard for wsl
vim.keymap.set('v','y',":'<,'>w !clip.exe<return><esc>", { noremap = true, silent = true})

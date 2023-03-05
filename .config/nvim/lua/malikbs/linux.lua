-- copy to clipboard for linux with xclip
vim.keymap.set('v','<C-c>','"+y<return><esc>', { noremap = true, silent = true}) -- copy
vim.keymap.set('v','<C-x>','"+ygv<DEL><return><esc>', { noremap = true, silent = true}) -- cut

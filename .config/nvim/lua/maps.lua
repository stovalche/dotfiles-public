local keymap = vim.keymap
local opts = { noremap = true, silent = true }
-- util
keymap.set('','<leader>w',':set wrap<return><esc>', opts)
keymap.set('','<leader>ww',':set nowrap<Return><esc>', opts)
-- navigation
keymap.set('','<C-b>','<Home>')
keymap.set('','<C-e>','<End>')
keymap.set('i','<C-b>','<Home>')
keymap.set('i','<C-e>','<End>')
keymap.set('','<C-v>','c<esc>"+p')
keymap.set('','<C-v>','<esc>"+pa')
keymap.set('','<C-a>','gg<S-v>G')
keymap.set('','<leader>q',':quit<return><esc>', opts)
-- buffers
keymap.set('n','<tab>=',':bn<return><esc>', opts)
keymap.set('n','<tab>-',':bp<return><esc>', opts)
keymap.set('n','<tab>q',':bd<return><esc>', opts)
keymap.set('n','<tab>n',':tabnew<return><esc>',opts)
-- nohlsearch
keymap.set('n','<leader>/',':nohl<cr>', opts)
-- delete a word backwards
keymap.set('n','dw','vb"_d')
-- add indent on visual mode
keymap.set('v','<tab>','>')
keymap.set('v','<S-tab>','<')
-- split
keymap.set('n', 'ww', ':split<Return><C-w>w')
keymap.set('n', 'wv', ':vsplit<Return><C-w>w')
-- move window
keymap.set('n','<Space>','<C-w>w')
keymap.set('', 'wh', '<C-w>h')
keymap.set('', 'wk', '<C-w>k')
keymap.set('', 'wj', '<C-w>j')
keymap.set('', 'wl', '<C-w>l')
-- resize splitted window
keymap.set('n', 'w<left>', '<C-w><')
keymap.set('n', 'w<right>', '<C-w>>')
keymap.set('n', 'w<up>', '<C-w>+')
keymap.set('n', 'w<down>', '<C-w>-')
-- copy to clipboard for wsl
--keymap.set('v','y',":'<,'>w !clip.exe<return><esc>", opts)
-- copy to clipboard for linux with xclip
keymap.set('v','<C-c>','"+y<return><esc>', opts) -- copy
keymap.set('v','<C-x>','"+ygv<DEL><return><esc>', opts) -- cut
-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

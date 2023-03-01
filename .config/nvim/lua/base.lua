-- fundamental setups ------------------------------------------------
vim.cmd('autocmd!')
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.wo.number = true
vim.opt.mouse = 'a'
vim.opt.shell = 'bash'
vim.opt.title = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.ai = true
vim.opt.si = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.hidden = true
vim.opt.lazyredraw = true
vim.opt.hlsearch = true
vim.opt.cmdheight = 1
vim.opt.updatetime = 250
vim.opt.laststatus = 3
vim.opt.showmode = true
vim.opt.exrc = true
vim.opt.ignorecase = true
vim.opt.breakindent = true
vim.opt.backspace = 'start,eol,indent'
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 999
----------------------------------------------------------------------
-- .viminfo ----------------------------------------------------------
vim.opt.viminfo = "'10,\"100,:20,%,n~/.config/nvim/.viminfo"
vim.cmd([[
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction
augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
]])
----------------------------------------------------------------------
-- number rows setup -------------------------------------------------
vim.wo.number = true
----------------------------------------------------------------------
-- file types config -------------------------------------------------
vim.opt.suffixesadd = '.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md,.ino,.pl,.c,.java,.sh'
-- python
vim.api.nvim_create_autocmd("FileType",{
  pattern = 'python',
  command = "setlocal shiftwidth=2 tabstop =2"
})
----------------------------------------------------------------------
-- commands ----------------------------------------------------------
vim.cmd([[
" save with root permission
command! W w !sudo tee > /dev/null %
]])
----------------------------------------------------------------------

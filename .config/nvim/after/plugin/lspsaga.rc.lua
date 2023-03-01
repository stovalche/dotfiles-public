local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript',
    typescriptreact = 'typescript-language-server --stdio',
    javascript = 'typescript-language-server --stdio',
    jacascriptreact = 'typescript-language-server --stdio'
  },
  border_style = "rounded",
  diagnostic_header = { " ", " ", " ", " " },
  code_action_icon = "ﯧ ",
  finder_icons = {
    def = '  ',
    ref = '諭 ',
    link = '  ',
  },
  symbol_in_winbar = {
      enable = false,
      in_custom = false,
      separator = '  ',
      show_file = false
  },
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)

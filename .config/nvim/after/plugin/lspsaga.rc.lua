local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup {
  ui = {
    border = "rounded", -- Border type can be single, double, rounded, solid, shadow.
    winblend = 0,
    expand = "",
    collapse = "",
    code_action = "",
    incoming = " ",
    outgoing = " ",
    hover = ' ',
    colors = {
      normal_bg = '#002b36'
    },
    kind = {
      -- ["Name"] = {"Icon", "@hi_group_name"}
      ["Folder"] = {" ", "@parameter"}
    }
  },
  symbol_in_winbar = {
    enable = true,
    in_custom = false,
    separator = "  ",
    hide_keyword = true,
    show_file = true,
    folder_level = 2,
    respect_root = false,
    color_mode = true,
  },
  lightbulb = {
    enable = true,
    enable_in_insert = false,
    sign = true,
    sign_priority = 50,
    virtual_text = true,
  },
  diagnostic = {
    on_insert = false,
  }
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', '<leader>t', '<Cmd>Lspsaga term_toggle<CR>', opts)

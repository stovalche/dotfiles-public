local db = require('dashboard')
local opts = { noremap = true, silent = true }

db.custom_header = {
  "",
  "",
  "",
  "     .-') _   ('-.                     (`-.           _   .-')    ",
  "    ( OO ) )_(  OO)                  _(OO  )_        ( '.( OO )_  ",
  ",--./ ,--,'(,------. .-'),-----. ,--(_/   ,. \\ ,-.-') ,--.   ,--.)",
  "|   \\ |  |\\ |  .---'( OO'  .-.  '\\   \\   /(__/ |  |OO)|   `.'   | ",
  "|    \\|  | )|  |    /   |  | |  | \\   \\ /   /  |  |  \\|         | ",
  "|  .     |/(|  '--. \\_) |  |\\|  |  \\   '   /,  |  |(_/|  |'.'|  | ",
  "|  |\\    |  |  .--'   \\ |  | |  |   \\     /__),|  |_.'|  |   |  | ",
  "|  | \\   |  |  `---.   `'  '-'  '    \\   /   (_|  |   |  |   |  | ",
  "`--'  `--'  `------'     `-----'      `-'      `--'   `--'   `--'",
  "",
  "",
  ""
}
db.custom_center = {
  {
    icon = "  ",
    desc = "New file          ",
    action = "DashboardNewFile",
    shortcut = "LDR n"
  },{
    icon = "ﱮ  ",
    desc = "Browse file       ",
    action = "Telescope file_browser",
    shortcut = "LDR d"
  },{
    icon = "  ",
    desc = "Find file         ",
    action = "Telescope find_files",
    shortcut = "LDR f"
  },{
    icon = "  ",
    desc = "Configure neovim  ",
    action = "tabedit ~/.config/nvim/init.vim",
    shortcut = "LDR c"
  },{
    icon = "  ",
    desc = "Exit neovim       ",
    action = "quit",
    shortcut = "LDR q"
  },
}
db.custom_footer = {
  "",
  "by: stovalche",
  "",
  ""
}

vim.keymap.set("n", "<Leader>n", ":DashboardNewFile<return><esc>", opts)
vim.keymap.set("n", "<leader>c", ":tabedit ~/.config/nvim/init.lua<return><esc>", opts)

vim.cmd[[
hi! DashboardHeader ctermbg=none ctermfg=none guibg=none guifg=#078baf
hi! DashboardCenter ctermbg=none ctermfg=none guibg=none guifg=#677e75
hi! DashboardShortCut ctermbg=none ctermfg=none guibg=none guifg=#b5890f
hi! DashboardFooter ctermbg=none ctermfg=none guibg=none guifg=#444444
]]

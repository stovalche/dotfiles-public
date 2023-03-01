local status = pcall(require, "nvim-treesitter")
if (not status) then return end

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "cpp",
    "lua",
    "python",
    "java",
    "vim",
    "html",
    "javascript",
    "yaml",
    "php",
    "vim",
    "c_sharp"
  },
  sync_install = true,
  auto_install = false,
  indent = {
    enable = true,
    disable = {
      "python",
      "php",
      "javascript",
      "lua"
    },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "gnt",
      scope_incremental = "gtt",
      node_decremental = "gnk",
    },
  },
  highlight = {
    enable = true,
    disable = {},
  },
    autotag = {
    enable = true,
  }
}
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = {
  "html",
  "css",
}

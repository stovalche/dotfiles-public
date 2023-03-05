local status = pcall(require, "nvim-treesitter")
if (not status) then return end

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "cpp",
    "c_sharp",
    "lua",
    "python",
    "java",
    "vim",
    "html",
    "javascript",
    "php",
    "fish",
    "bash"
  },
  indent = {
    enable = true,
    disable = {
      "python",
      "php",
      "javascript",
      "lua"
    },
  },
  highlight = {
    enable = true,
    disable = {},
  },
    autotag = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "gnt",
      scope_incremental = "gtt",
      node_decremental = "gnk",
    },
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = {
  "html",
  "css",
  "javascript",
  "typerscript.tsx"
}

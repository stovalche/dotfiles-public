--vim.lsp.set_log_level("debug")

local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

require('lspconfig.ui.windows').default_options.border = 'rounded' -- bordered LspInfo

local capabilities = require('cmp_nvim_lsp').default_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

-- diagnostic column symbols (gutter)
local signs = { Error = "", Warn = "𥉉", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign"..type
  vim.fn.sign_define(hl ,{ text = icon, texthl = hl, numhl = "" })
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    update_in_insert = true,
    underline = true,
    virtual_text = {
      spacing = 0,
      prefix = ' '
    },
    severity_sort = true
  }
)

vim.diagnostic.config({
  virtual_text = {
    prefix = '●'
  },-- true or false could be use 
  signs = true,
  update_in_insert = true,
  severity_sort = false,
  float = {
    border = 'rounded',
    focusable = false,
    close_events = { "BufLeave", "CursorMoved", "FocusLost", "InsertEnter" },
    source = 'always', --'if_many'
    scope = 'line', --'cursor'
  }
})

-- diagnostic helps when CursorHold
vim.cmd([[autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})]])

-- mappings
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>[', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<space>]', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- language servers
nvim_lsp.pyright.setup{
  capabilities = capabilities
}

nvim_lsp.clangd.setup{
  cmd = {
    "clangd"
  },
  filetypes = {
    "c",
    "cpp",
    "objc",
    "objcpp",
    "cuda",
  },
  single_file_support = true,
  capabilities = capabilities
}

nvim_lsp.cssls.setup{
  cmd = {
    "vscode-css-language-server",
    "--stdio"
  },
  filetypes = {
    "css",
    "scss",
    "less",
  },
  single_file_support = true,
  settings = {
    css = {
      validate = true
    },
    scss = {
      validate = true
    },
    less = {
      validate = true
    }
  },
  capabilities = capabilities
}

nvim_lsp.tailwindcss.setup {
  capabilities = capabilities
}

nvim_lsp.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
  capabilities = capabilities
}

nvim_lsp.astro.setup {
  capabilities = capabilities
}

nvim_lsp.tsserver.setup{
  single_file_support = true,
  --filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
  capabilities = capabilities
}

nvim_lsp.arduino_language_server.setup {
  cmd = {
    "arduino-language-server",
    "clangd",
    "-cli-config", "/home/malikbs/.arduino15/arduino-cli.yaml",
    "-fqbn", "arduino:avr:uno",
    "-cli", "arduino-cli",
    "-clangd", "clangd"
  },
  single_file_support = true,
  capabilities = capabilities
}

nvim_lsp.java_language_server.setup {
  cmd = { "java-language-server" },
  capabilities = capabilities
}

nvim_lsp.bashls.setup {
  single_file_support = true,
  capabilities = capabilities
}

nvim_lsp.cssmodules_ls.setup {
  cmd = { "cssmodules-language-server" },
  capabilities = capabilities
}

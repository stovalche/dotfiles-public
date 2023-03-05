local status, mason = pcall(require, "mason")
if (not status) then return end

local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then
  print("mason-lspconfig is not installed")
  return
end

mason.setup({

})

lspconfig.setup {
  ensure_installed = {
    "arduino_language_server",
    "pyright",
    "clangd",
    "tsserver",
    "lua_ls",
    "cssls",
    "html",
    "omnisharp_mono",
  },
}

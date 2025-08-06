local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

mason.setup()
mason_lspconfig.setup {
  ensure_installed = {
    "clangd",
    "ts_ls",
    "pyright",
    "rust_analyzer",
    "tailwindcss"
  },

  handlers = {
    function(server_name)
      lspconfig[server_name].setup {
        capabilities = capabilities,
      }
    end,
  },
}

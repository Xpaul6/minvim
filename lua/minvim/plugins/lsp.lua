local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

local servers = {
    "clangd",
    "ts_ls",
    "pyright",
    "rust_analyzer",
    "tailwindcss",
    "emmet_ls",
    "gopls",
}

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- Jump to definition
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)       -- Show documentation
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts) -- Find references
end

-- Defaults merged into the config of every server
vim.lsp.config("*", {
    capabilities = capabilities,
    on_attach = on_attach,
})

vim.lsp.config("emmet_ls", {
    filetypes = { "typescriptreact", "javascriptreact" },
})

mason.setup()

mason_lspconfig.setup({
    ensure_installed = servers,
    automatic_enable = servers,
})

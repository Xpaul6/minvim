local languages = {
    "c", "lua", "vim", "vimdoc", "query",
    "markdown", "markdown_inline", "asm", "bash",
    "c_sharp", "cmake", "cpp", "css", "dockerfile",
    "html", "javascript", "json", "latex", "python",
    "rust", "tsx", "typescript", "svelte", "yaml", "go",
}

require("nvim-treesitter").install(languages)

vim.api.nvim_create_autocmd("FileType", {
    pattern = languages,
    callback = function(args)
        -- Enable native Tree-sitter highlighting
        vim.treesitter.start(args.buf)

        -- Enable Tree-sitter indentation
        vim.bo[args.buf].indentexpr =
            "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})

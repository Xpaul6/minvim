local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

vim.g.maplocalleader = "\\"

require("lazy").setup({
    spec = {
        {
            "folke/lazy.nvim",
            version = "*",
            lazy = false,
        },

        -- Colorscheme & looks
        { "nyoom-engineering/oxocarbon.nvim" },
        {
            "nvim-treesitter/nvim-treesitter",
            build = ":TSUpdate",
        },

        -- Active plugins
        {
            "nvim-telescope/telescope.nvim",
            tag = "0.1.8",
            dependencies = {
                { "nvim-lua/plenary.nvim" },
            },
        },
        {
            "windwp/nvim-autopairs",
            event = "InsertEnter",
            config = function()
                require("nvim-autopairs").setup {}
            end,
        },
        { "lewis6991/gitsigns.nvim" },

        -- LSP & autocomplete
        { "neovim/nvim-lspconfig" },
        { "hrsh7th/nvim-cmp" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "onsails/lspkind.nvim" },
        {
            "L3MON4D3/LuaSnip",
            dependencies = {
                { "rafamadriz/friendly-snippets" }
            },
            config = function()
                require("luasnip.loaders.from_vscode").lazy_load()
                require("luasnip").config.setup({})
            end
        },
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },

        -- Misc
        { "tmux-plugins/vim-tmux-focus-events" },
    },
    checker = { enabled = true },
})


require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "asm", "bash", "c_sharp", "cmake", "cpp", "css",
  	"dockerfile", "html", "javascript", "json", "latex", "python", "rust", "tsx", "typescript", "svelte" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}

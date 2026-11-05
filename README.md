# MinVim
Minimalistic nvim configuration for actually doing stuff. Based on Lazy.

## Features
- LSPs and autocompletion
- Telescope for fuzzy file/string search
- Treesitter for better syntax highlighting
- Gitsigns for basic git integration
- My fav IBM Oxocarbon theme :)

## Plugin list

Managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

### Core
- [lazy.nvim](https://github.com/folke/lazy.nvim) — plugin manager

### Colorscheme & looks
- [oxocarbon.nvim](https://github.com/nyoom-engineering/oxocarbon.nvim) — IBM Oxocarbon theme
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — syntax highlighting & indentation

### Search
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) — fuzzy finder
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) — Telescope dependency

### Editing
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) — automatic bracket/quote pairs
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) — git hunks in the sign column

### LSP & autocompletion
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) — LSP client configuration
- [mason.nvim](https://github.com/williamboman/mason.nvim) — external tool installer
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) — Mason ↔ lspconfig bridge
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) — completion engine
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) — LSP completion source
- [lspkind.nvim](https://github.com/onsails/lspkind.nvim) — completion item icons
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) — snippet engine
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) — VSCode-style snippet collection

### Misc
- [vim-tmux-focus-events](https://github.com/tmux-plugins/vim-tmux-focus-events) — fix `FocusGained`/`FocusLost` inside tmux

Installed LSP servers (via Mason): `clangd`, `ts_ls`, `pyright`, `rust_analyzer`, `tailwindcss`, `emmet_ls`.

## Custom keybinds

Leader is `<Space>`, local leader is `\`.

### General
| Keybind | Action |
| --- | --- |
| `;` | Enter command mode (`:`) |
| `<leader>w` | Write file (`:write`) |
| `<leader>q` | Quit (`:quit`) |
| `<leader>e` | Open netrw explorer (`:Ex`) |
| `<leader>t` | New tab (`:tabnew`) |
| `<leader>1` – `<leader>9` | Go to tab 1–9 |
| `<leader>lf` | Format buffer via LSP |
| `<leader>d` | Git diff current file (`Gitsigns diffthis`) |

### LSP (buffer-local, set on attach)
| Keybind | Action |
| --- | --- |
| `gd` | Jump to definition |
| `K` | Show hover documentation |
| `gr` | Find references |

### Telescope
| Keybind | Action |
| --- | --- |
| `<leader>ff` | Find files |
| `<leader>fs` | Grep string (prompts for a pattern) |
| `<leader>fd` | List diagnostics |

### Netrw (buffer-local)
| Keybind | Action |
| --- | --- |
| `h` | Go up a directory (`-`) |
| `l` | Open file/directory (`<CR>`) |
| `.` | Toggle hidden files (`gh`) |

### Autocompletion (insert mode)
| Keybind | Action |
| --- | --- |
| `<Tab>` | Confirm selected item |
| `<C-Space>` | Trigger completion |
| `<C-e>` | Abort completion |
| `<C-b>` | Scroll docs up |
| `<C-f>` | Scroll docs down |

### Custom commands
| Command | Action |
| --- | --- |
| `:E` | Alias for `:Ex` |
| `:Vt` | Open a vertical terminal |


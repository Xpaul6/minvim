-- Writing
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 10

-- Visuals
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd('syntax on')
vim.cmd('filetype on')
vim.cmd('noh')
vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme oxocarbon")
vim.opt.cursorline = true
vim.o.hlsearch = false

-- Behaviour
vim.opt.splitright = true
vim.opt.splitbelow = true

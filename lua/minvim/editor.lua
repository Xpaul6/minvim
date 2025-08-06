-- Writing
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.cmd("autocmd BufRead,BufNewFile *.js,*.ts,*.jsx,*.tsx set tabstop=2|set shiftwidth=2")

-- Visuals
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd('syntax on')
vim.cmd('filetype on')
vim.opt.background = "dark"
vim.cmd("colorscheme oxocarbon")
vim.opt.cursorline = true
vim.o.hlsearch = false

-- Behaviour
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.autoread = true

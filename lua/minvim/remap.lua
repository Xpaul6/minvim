-- Keymaps
vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', ';', ':', { noremap = true })
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>e', ':Ex<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>t', ':tabnew<CR>')

vim.api.nvim_create_autocmd("filetype", {
    pattern = "netrw",
    callback = function()
        vim.keymap.set("n", "h", "-", { buffer = true, remap = true })
        vim.keymap.set("n", "l", "<CR>", { buffer = true, remap = true })
        vim.keymap.set("n", ".", "gh", { buffer = true, remap = true })
    end,
})

-- Commands
vim.api.nvim_create_user_command('Vt', 'vertical terminal', {})
vim.api.nvim_create_user_command('E', 'Ex', {})
vim.keymap.set('n', '<leader>d', ':Gitsigns diffthis<CR><C-w>w')

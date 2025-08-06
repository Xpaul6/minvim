-- Keymaps
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', ';', ':', { noremap = true })
vim.keymap.set('n', '<leader>e', ':Ex<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

-- Commands
vim.api.nvim_create_user_command('Vt', 'vertical terminal', {})
vim.api.nvim_create_user_command('E', 'Ex', {})


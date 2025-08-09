local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep >> ") })
end)
vim.keymap.set('n', '<leader>td', builtin.diagnostics, { desc = 'Telescope diagnostic' })


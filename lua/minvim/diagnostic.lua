vim.opt.updatetime = 300

vim.diagnostic.config({
    --virtual_text = {
    --  prefix = '|', -- Could be '■', '▎', 'x', '●'
    --},
    virtual_text = false,
    signs = true,           -- Use signs in the gutter
    underline = true,       -- Underline the erroneous text
    update_in_insert = false, -- Don't update diagnostics inside insert mode
    severity_sort = true,   -- Sort diagnostics by severity
})

-- Automatically open diagnostic floating window on cursor hold
vim.api.nvim_create_autocmd('CursorHold', {
    callback = function()
        local opts = {
            focusable = false,
            close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
            border = 'rounded',
            source = 'always', -- Show source of diagnostic
            prefix = '●',
        }
        vim.diagnostic.open_float(nil, opts)
    end
})


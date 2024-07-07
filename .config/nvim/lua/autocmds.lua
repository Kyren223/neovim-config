vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking text',
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    group = vim.api.nvim_create_augroup('disable-auto-comment', { clear = true }),
    pattern = '*',
    callback = function()
        -- c - autowrap using textwidth | r - enter in insert mode | o - o/O in normal mode
        -- vim.opt.formatoptions:remove({ 'c', 'r', 'o' })
        vim.cmd('set formatoptions-=co')
    end,
})

local telescope = require('telescope')
telescope.setup({
    pickers = {
        find_files = { follow = true },
        grep_string = { additional_args = '--follow' },
        live_grep = { additional_args = '--follow' },
    },
    extensions = {
        fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = 'smart_case',       -- default "smart_case" or "ignore_case" or "respect_case"
        },
        ['ui-select'] = {
            require('telescope.themes').get_dropdown({}),
        },
    },
})

pcall(telescope.load_extension('ui-select'))
pcall(telescope.load_extension('fzf'))

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fs', builtin.find_files, { desc = '[F]ile [S]ystem' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
vim.keymap.set('n', '<leader>fm', builtin.man_pages, { desc = '[F]ind [M]an Pages' })
-- vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind current [W]ord' })
vim.keymap.set('n', '<leader>lv', builtin.live_grep, { desc = '[L]ive [G]rep' })
vim.keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = '[F]ind Recent Files' })
vim.keymap.set('n', '<leader>th', builtin.colorscheme, { desc = 'List [Th]eme' })
-- vim.keymap.set('n', '<leader>ob', builtin.buffers, { desc = '[O]pen [B]uffers' })

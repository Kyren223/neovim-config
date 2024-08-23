return {
    'supermaven-inc/supermaven-nvim',
    event = 'VeryLazy',
    keys = {
        {
            '<leader>sm',
            function()
                local api = require('supermaven-nvim.api')
                if api.is_running() then
                    Notify('Enabled Supermaven', 'Supermaven')
                    api.stop()
                else
                    Notify('Disabled Supermaven', 'Supermaven')
                    api.start()
                end
            end,
            desc = '[S]upermaven [T]oggle',
        },
    },
    opts = {
        keymaps = {
            accept_suggestion = '<C-y>',
            clear_suggestion = '<C-]>',
            accept_word = nil,
        },
        ignore_filetypes = {
            ['markdown'] = true,
            ['help'] = true,
            ['NeogitStatus'] = true,
            ['NeogitPopup'] = true,
            ['NeogitCommitMessage'] = true,
        },
        color = {
            suggestion_color = '#ffffff',
            cterm = 244,
        },
        log_level = 'info', -- set to "off" to disable logging completely
        disable_inline_completion = false, -- disables inline completion for use with cmp
        disable_keymaps = false,
    },
}

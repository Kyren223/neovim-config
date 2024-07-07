return {
    {
        'hrsh7th/nvim-cmp',
        lazy = false,
        priority = 100,
        dependencies = {
            -- 'onsails/lspkind.nvim',
            -- 'hrsh7th/cmp-path',
            -- 'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp', -- lsp source for nvim-cmp
            'saadparwaiz1/cmp_luasnip', -- snippets source for nvim-cmp
            { 'L3MON4D3/LuaSnip', build = 'make install_jsregexp' }, -- snippets plugin
        },
        -- TODO: Move to setup opts
        config = function()
            require('custom.completion')
        end,
    },
}

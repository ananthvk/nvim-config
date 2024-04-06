return {
    {
        'sainnhe/gruvbox-material',
        lazy = true, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000,
        config = function()
            vim.o.background = 'dark'
            --vim.cmd [[colorscheme gruvbox-material]]
        end
    },
    {
        'maxmx03/solarized.nvim',
        lazy = true,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        config = function()
            vim.o.background = 'dark'
            vim.cmd [[colorscheme catppuccin-mocha]]
        end
    }
}

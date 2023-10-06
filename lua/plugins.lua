return {{
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {'nvim-lua/plenary.nvim'}
    -- Install ripgrep https://github.com/BurntSushi/ripgrep for live grep
}, {
    'sainnhe/gruvbox-material',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000
}}

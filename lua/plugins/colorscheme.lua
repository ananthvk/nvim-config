return {
    'sainnhe/gruvbox-material',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    config = function()
        vim.cmd [[colorscheme gruvbox-material]]
    end
}

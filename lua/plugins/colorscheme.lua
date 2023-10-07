return {
    'sainnhe/gruvbox-material',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    config = function()
        vim.cmd [[colorscheme gruvbox-material]]
    end
}
--[==[
return {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        vim.o.background = 'dark' -- or 'light'

        vim.cmd.colorscheme 'solarized'
    end
}
--]==]

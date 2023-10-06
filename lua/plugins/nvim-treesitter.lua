return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        treesitter.setup({
            -- Ensure that these languages are supported
            ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "cpp", "javascript", "css", "python",
                                "regex", "yaml"},
            -- Enable syntax highlighting
            highlight = {
                enable = true
            },
            -- Enable indendation
            indent = {
                enable = true
            },
            -- Disable vim syntax highlighting
            additional_vim_regex_highlighting = false
        })
    end
}

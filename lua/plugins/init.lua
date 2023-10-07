return {{
    "mbbill/undotree",
    config = function()
        vim.keymap.set("n", "<F5>", ":UndotreeToggle<CR>", {
            silent = true,
            noremap = true
        })
    end
}, {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
}, {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = {"nvim-treesitter/nvim-treesitter"}
}, { -- using lazy.nvim
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config=function()
            require("bufferline").setup{}
    end
}}

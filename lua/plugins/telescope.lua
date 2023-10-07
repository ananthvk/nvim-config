return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {'nvim-lua/plenary.nvim', {
        "nvim-telescope/telescope-fzf-native.nvim",
        -- add telescope-fzf-native
        build = "make",
        config = function()
            require("telescope").load_extension("fzf")
        end
    }},
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end
    -- Install ripgrep https://github.com/BurntSushi/ripgrep for live grep
}

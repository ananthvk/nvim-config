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
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {silent=true, desc="file"})
        vim.keymap.set('n', '<leader>fd', builtin.live_grep, {silent=true, desc="in in dir(live)"})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {silent=true, desc="in buffers"})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {silent=true, desc="help"})
        vim.keymap.set('n', "<leader>fi", builtin.current_buffer_fuzzy_find, {silent=true, desc="in file"})
        vim.keymap.set('n', "<leader>fr", builtin.oldfiles, {silent=true, desc="recent files"})
        vim.keymap.set('n', "<leader>fw", builtin.grep_string, {silent=true, desc="word"})
        vim.keymap.set('n', "<leader>fg", builtin.git_files, {silent=true, desc="git files"})
    end
    -- Install ripgrep https://github.com/BurntSushi/ripgrep for live grep
}

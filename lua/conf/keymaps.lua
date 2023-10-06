-- Set the mapleader to space
vim.g.mapleader = " "

-- Function for *noremaps
function noremap(mode, mapping, action)
    options = { noremap = true, silent = true }
    vim.keymap.set(mode, mapping, action, options)
end

noremap("n", "<leader>q", vim.cmd.quit)
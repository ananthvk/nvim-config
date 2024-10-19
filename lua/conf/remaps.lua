-- Function for *noremaps
function noremap(mode, mapping, action, desc)
    local options = {
        noremap = true,
        silent = true,
        desc = desc
    }
    vim.keymap.set(mode, mapping, action, options)
end

-- Pane related remaps
-- Switch focus between various panes
noremap("n", "<leader>h", ":wincmd h<CR>", "left pane")
noremap("n", "<leader>j", ":wincmd j<CR>", "bottom pane")
noremap("n", "<leader>k", ":wincmd k<CR>", "top pane")
noremap("n", "<leader>l", ":wincmd l<CR>", "right pane")

-- Modify the dimensions of the focused pane
noremap("n", "<a-h>", "<c-w><")
noremap("n", "<a-l>", "<c-w>>")
noremap("n", "<a-k>", "<c-w>-")
noremap("n", "<a-j>", "<c-w>+")

-- Tab related remaps
noremap("n", "<leader>tn", ":tabnew<CR>", "new tab")
noremap("n", "<leader>to", ":tabonly<CR>", "tab only")
noremap("n", "<leader>tc", ":tabclose<CR>", "close tab")
noremap("n", "<leader>tm", ":tabmove", "move tab")

-- General remaps
noremap("n", "L", ":set list!<CR>", "list on")
noremap("n", "<leader>q", vim.cmd.quit, "quit")
noremap("n", "<leader>s", vim.cmd.noh, "highlight off")
noremap("n", "<leader>w", ":w!<cr>", "save buffer")
noremap("n", "-", ":move +1<CR>", "shift down")
noremap("n", "_", ":move -2<CR>", "shift up")
noremap("n", "<leader>up", "viwU", "to upper")
noremap("n", "<leader>o", "za", "fold block")
noremap("n", "<leader>b", "<c-o>", "link back")
noremap("n", "<leader>n", ":bn<CR>", "next buffer")
noremap("n", "<leader>i", ":bp<CR>", "previous buffer")
noremap("n", "<leader>p", "\"0p", "paste yanked after")
noremap("n", "<leader>P", "\"0P", "paste yanked before")
noremap("i", "jk", "<Esc>", "escape")
noremap("i", "<c-e>", "<c-o>A", "end of line, insert")
noremap("i", "<c-d>", "<Esc>ddi", "delete line, insert")
noremap("i", "<c-space>", "<c-n>") -- ???
noremap("v", "<A-j>", ":m '>+1<CR>gv=gv", "shift range down")
noremap("v", "<A-k>", ":m '<-2<CR>gv=gv", "shift range up")
noremap("c", "w!!", "w !sudo tee > /dev/null %", "save without sudo")
noremap("c", "help", "vert help")
noremap("n", "<leader>mm", "mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm") -- Remove the Windows ^M - when the encodings gets messed up
noremap("n", "<leader>ms", ":let _s=@/<Bar>:%s/\\s\\+$//e<Bar>:let @/=_s<Bar><CR>") -- Remove trailing whitespaces
noremap("n", "S", ":%s/\\<<C-r><C-w>\\>//g<Left><Left><C-r><C-w>") -- S will search/replace the word under the cursor
noremap("n", "<leader>e", ":Ex<CR>")
noremap("n", "<leader>ve", ":Ex "..vim.fn.stdpath("config").."<CR>")

-- Changed this to jj because of conflict with jk of zsh vi mode
noremap("t", "jj", "<C-\\><C-n>") -- Terminal mode jk to Esc


-- Key mappings to switch between terminal and last used buffer Ctrl+W and Ctrl+P
noremap("n", "<A-u>", "<c-w><c-p>")
noremap("n", "<A-i>", "<c-w><c-p>")
noremap("i", "<A-u>", "<c-o><c-w><c-p>")
noremap("i", "<A-i>", "<c-o><c-w><c-p>")
noremap("t", "<silent>", "<C-[> <C-[>")
noremap("t", "<A-u>", "<c-w><c-p>")
noremap("t", "<A-i>", "<c-w><c-p>")

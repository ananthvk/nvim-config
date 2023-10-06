-- Set the mapleader to space
vim.g.mapleader = " "

-- Function for *noremaps
function noremap(mode, mapping, action)
    options = {
        noremap = true,
        silent = true
    }
    vim.keymap.set(mode, mapping, action, options)
end

-- Pane related remaps
-- Switch focus between various panes
noremap("n", "<leader>h", ":wincmd h<CR>")
noremap("n", "<leader>j", ":wincmd j<CR>")
noremap("n", "<leader>k", ":wincmd k<CR>")
noremap("n", "<leader>l", ":wincmd l<CR>")

-- Modify the dimensions of the focused pane
noremap("n", "<a-h>", "<c-w><")
noremap("n", "<a-l>", "<c-w>>")
noremap("n", "<a-k>", "<c-w>-")
noremap("n", "<a-j>", "<c-w>+")

-- Tab related remaps
noremap("n", "<leader>tn", ":tabnew<CR>")
noremap("n", "<leader>to", ":tabonly<CR>")
noremap("n", "<leader>tc", ":tabclose<CR>")
noremap("n", "<leader>tm", ":tabmove")
noremap("n", "<leader>t<leader>", ":tabnext<CR>")

-- General remaps
noremap("n", "<leader>q", vim.cmd.quit) -- Quit the buffer
noremap("n", "<leader>s", vim.cmd.noh) -- Remove highlights for search
noremap("n", "<leader>w", ":w!<cr>") -- Save the buffer
noremap("n", "-", ":move +1<CR>") -- Shifts the line down by one
noremap("n", "_", ":move -2<CR>") -- Shifts the line up by one
noremap("n", "<leader>up", "viwU") -- Converts the word under the cursor to uppercase
noremap("n", "<leader>o", "za") -- Fold block
noremap("n", "<leader>f", "<c-]>") -- Follow a link(vim help)
noremap("n", "<leader>b", "<c-o>") -- Go back(vim help)
noremap("n", "<leader>n", ":bn<CR>") -- Go to next buffer
noremap("n", "<leader>i", ":bp<CR>") -- Go to previous buffer
noremap("n", "<leader>u", "<c-U>") -- Scroll one page up
noremap("n", "<leader>d", "<c-D>") -- Scroll one page down
noremap("n", "<leader>p", "\"0p") -- Pastes the last yanked text after the cursor
noremap("n", "<leader>P", "\"0P") -- Pastes the last yanked text before the cursor
noremap("i", "jk", "<Esc>") -- Remap jk to Esc
noremap("i", "<c-e>", "<c-o>A") -- Goes to the end of line from insert mode
noremap("i", "<c-d>", "<Esc>ddi") -- Deletes the current line from insert mode
noremap("i", "<c-space>", "<c-n>") -- ???
noremap("t", "jk", "<C-\\><C-n>") -- Terminal mode jk to Esc
noremap("v", "<A-j>", ":m '>+1<CR>gv=gv") -- Shifts a range of lines down
noremap("v", "<A-k>", ":m '<-2<CR>gv=gv") -- Shifts a range of lines up
noremap("c", "w!!", "w !sudo tee > /dev/null %") -- When you forget to open the file in sudo mode

--[[
    TODO
noremap("t", "<leader>ve", ":vsplit $HOME/.vim/.vimrc<CR>")
noremap("t", "<leader>vs", ":source $HOME/.vim/.vimrc<CR>")
" Git remappings
nnoremap <leader>ga :Git add -A<CR>
nnoremap <leader>gc :Git commit -m "Changes"<CR>
nnoremap <leader>gp :Git push -u origin main<CR>

" S will search/replace the word under the cursor
nnoremap S :%s/\<<C-r><C-w>\>//g<Left><Left><C-r><C-w>
" Pastes the content in the 0 register, which contains the last yanked
" text even if other deletes are performed.
--]]
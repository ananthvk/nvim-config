-- Set the mapleader to space
vim.g.mapleader = " "
-- Set encoding
vim.opt.encoding = "utf-8"

vim.opt.syntax = "enable" -- Enable syntax highlighting
vim.opt.wrap = true -- Enable line wrapping
vim.opt.linebreak = true -- Don't wrap middle of a word
vim.opt.termguicolors = true -- set terminal colors
vim.g.t_Co = 256
vim.opt.guifont = {"DejaVu Sans Mono for Powerline:h12:cANSI:qDRAFT", "IBM Plex Mono:h12:cANSI:qDRAFT",
                   "Roboto Mono:h12:cANSI:qDRAFT"}
vim.opt.tabstop = 4 -- number of visual spaces per a tab
vim.opt.softtabstop = 4 -- number of spaces in insert mode
vim.opt.expandtab = true -- Tabs are spaces, useful in python where spaces are preferred.
vim.opt.smarttab = true -- Insert tabstop number of spaces when tab key is pressed instead of tab
vim.opt.shiftwidth = 4 -- Use space instead of tab
vim.opt.autoindent = true -- Enable auto indentation
vim.opt.shiftround = true -- When inserting spaces using 1>> use a multiple of shifwidth.
vim.opt.copyindent = true -- Copy previous indentation.
vim.opt.showbreak = "↪\\"
vim.opt.listchars = {
    tab = '⇥ ', -- Tab character, NOTE: It must be having length 2
    eol = '↲', -- End-of-line character
    trail = '•', -- Trailing whitespace
    extends = '→', -- Characters indicating a wrapped line
    precedes = '←' -- Characters indicating a wrapped line
}
vim.opt.hlsearch = true -- Enable search highlighting when searching
vim.opt.ignorecase = true -- Ignore case while searching
vim.opt.incsearch = true -- Start searching for partial match
vim.opt.smartcase = true -- When there is a uppercase letter in the search, make the search case sensitive
vim.opt.magic = true -- Allows the use of regular expressions.
vim.opt.relativenumber = true -- Shows the relative number of a line, useful for movements with hjkl
vim.opt.showcmd = true -- Show the last command entered in the bottom right.
vim.opt.cursorline = true -- Highlight the current cursor line so that it is easy to read.
vim.opt.wildmenu = true -- Autocomplete the command menu, that is when you type : , so a gui comes up
vim.opt.showmatch = true --  Highlight the matching paranthesis including [], {}, ()
vim.opt.title = true -- set the window's title based on the filename
vim.opt.lazyredraw = true -- don't update screen during macro execution
vim.opt.ttyfast = true
vim.opt.hidden = true -- To hide the files in background instead of closing them
vim.opt.history = 5000 -- Increase the undolimit to 5000
vim.opt.ruler = true -- set the ruler, the line and column number display
vim.opt.confirm = true -- Ask for confirmation when closing a unsaved file
vim.opt.laststatus = 2 -- Always show the status bar.
vim.opt.splitright = true -- Always split to the right
vim.opt.mouse = vim.opt.mouse + 'a' -- Enables mouse
vim.opt.clipboard = vim.opt.clipboard + "unnamedplus" -- Uses system's clipboard
vim.g.loaded_matchparen = 1

-- Options that are not available
-- vim.opt.nocp = true -- Dont behave in compatible vim mode
-- vim.opt.noerrorbells = true -- Disable beep sound on error

-- Modify XDG paths so that everything is in one directory
local config_path = vim.fn.stdpath('config')
local lazypath = config_path .. "/.persist/lazy/lazy.nvim"
local undodir = config_path .. "/.persist/undo"
local cachedir = config_path .. "/.persist/cache"
local backupdir = config_path .. "/.persist/backup"
vim.env.XDG_DATA_HOME = config_path .. "/.persist/data"
vim.env.XDG_STATE_HOME = config_path .. "/.persist/state"

function create_directory(path)
    if vim.fn.isdirectory(path) == 0 then
        vim.fn.mkdir(path, "p")
    end
end

-- Create directories if they do not exist
create_directory(undodir)
create_directory(cachedir)
create_directory(backupdir)
create_directory(config_path .. "/.persist/data")
create_directory(config_path .. "/.persist/state")

vim.opt.undodir = undodir -- Set the undo directory
vim.opt.undofile = true -- use persistent undo
vim.opt.undolevels = 5000 -- Use 5000 undo levels
vim.opt.undoreload = 10000 -- Store 10000 lines
vim.opt.directory = cachedir -- Store all the swapfiles
vim.opt.backup = true -- Enable backups
vim.opt.backupdir = backupdir -- path to store backups
vim.opt.updatetime = 350

-- Install lazy.nvim as package manager, but install in config folder to manage them together
if not vim.loop.fs_stat(lazypath) then
    print("lazy.nvim package manager not installed .... installing in " .. lazypath)
    create_directory(lazypath)
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
         lazypath})
end
vim.opt.rtp:prepend(lazypath)

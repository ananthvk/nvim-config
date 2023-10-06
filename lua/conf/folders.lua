local config_path = vim.fn.stdpath('config')

function create_directory(path)
    if vim.fn.isdirectory(path) == 0 then
        vim.fn.mkdir(path, "p")
    end
end

local undodir = config_path .. "/.persist/undo"
local cachedir = config_path .. "/.persist/cache"
local backupdir = config_path .. "/.persist/backup"

create_directory(undodir)
create_directory(cachedir)
create_directory(backupdir)

vim.opt.undodir = undodir -- Set the undo directory
vim.opt.undofile = true -- use persistent undo
vim.opt.undolevels = 5000 -- Use 5000 undo levels
vim.opt.undoreload = 10000 -- Store 10000 lines
vim.opt.directory = cachedir -- Store all the swapfiles
vim.opt.backup = true -- Enable backups
vim.opt.backupdir = backupdir -- path to store backups
vim.opt.updatetime = 350

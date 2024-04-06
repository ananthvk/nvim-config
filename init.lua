if vim.g.vscode then
    -- VSCode extension
    -- Do not install and use plugins here
    print("Using vs nvim")

else
    -- ordinary Neovim
    require("conf.options")
    require("conf.bootstrap")
    require("conf.remaps")
    require("conf.ignores")
    require("conf.abbrev")
end


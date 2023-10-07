return {
    -- https://github.com/goolord/alpha-nvim/discussions/16
    'goolord/alpha-nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
        local dashboard = require("alpha.themes.dashboard")
        local config_path = vim.fn.stdpath('config')
        dashboard.section.header.type = "text"
        -- Note if you try to set dashboard.section.header = {...}, it does not work
        -- since we set it to another instance
        dashboard.section.header.val =
            {[[███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
             [[████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
             [[██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
             [[██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
             [[██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
             [[╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]]}
        dashboard.section.header.opts = {
            position = "center",
            hl = "Type"
        }
        dashboard.section.buttons.val = {dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
                                         dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
                                         dashboard.button("r", "  Recent files", ":Telescope oldfiles <CR>"),
                                         dashboard.button("t", "  Find Text", ":Telescope live_grep <CR>"),
                                         dashboard.button("F", "  File browser", ":Ex<CR>"),
                                         dashboard.button("c", "  Configuration", ":Ex "..config_path.."<CR>"),
                                         dashboard.button("p", "󰂖  Configure lazy", "<Cmd>Lazy<CR>"),
                                         dashboard.button("q", "󰅚  Quit", ":qa<CR>")}
        local function footer()
            return "while(!(succeed = try()))"
        end
        dashboard.section.footer.val = footer()
        dashboard.section.footer.opts.hl = "Type"
        dashboard.section.header.opts.hl = "Include"
        dashboard.section.buttons.opts.hl = "Keyword"
        dashboard.opts.opts.noautocmd = true
        require("alpha").setup(dashboard.config)
    end
};

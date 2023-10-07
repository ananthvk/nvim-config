return {
    'neovim/nvim-lspconfig',
    cmd = {'LspInfo', 'LspInstall', 'LspStart'},
    event = {'BufReadPre', 'BufNewFile'},
    dependencies = {{'hrsh7th/cmp-nvim-lsp'}, {'williamboman/mason-lspconfig.nvim'}},
    config = function()
        -- This is where all the LSP shenanigans will live
        local lsp_zero = require('lsp-zero')
        lsp_zero.extend_lspconfig()

        -- Function runs whenever a LSP is connected when an appropriate buffer is opened
        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({
                buffer = bufnr
            })
            local opts = {
                buffer = bufnr,
                remap = false
            }
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        end)

        require('mason-lspconfig').setup({
            -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
            ensure_installed = {"clangd", -- C, C++
            "cmake", -- CMake
            "cssls", -- CSS
            "bashls", -- Bash
            "gopls", -- Golang
            "lua_ls", -- Lua
            "pyright", -- Python
            "html", -- HTML
            "tsserver" -- Javascript, Typescript
            },
            handlers = {
                lsp_zero.default_setup,
                lua_ls = function()
                    -- (Optional) Configure lua language server for neovim
                    local lua_opts = lsp_zero.nvim_lua_ls()
                    require('lspconfig').lua_ls.setup(lua_opts)
                    require('lspconfig').clangd.setup({})
                    require('lspconfig').cmake.setup({})
                    require('lspconfig').pyright.setup({})
                    require('lspconfig').html.setup({})
                    require('lspconfig').tsserver.setup({})
                    require('lspconfig').gopls.setup({})
                    require('lspconfig').bashls.setup({})
                    require('lspconfig').cssls.setup({})
                end
            }
        })
    end
}

-- lua_ls
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'lua',
    group = 'UserLSP',
    desc = 'lua_language_server',
    callback = function()
        local root_dir = vim.fs.find({ '.luarc.json', '.luarc.jsonc', '.luacheckrc', '.stylua.toml', 'stylua.toml', 'selene.toml', 'selene.yml', '.git' }, { upward = true, stop = vim.env.HOME })

        if root_dir[1] == nil then
            return
        end

        vim.lsp.start({
            name = 'lua_language_server',
            cmd = { 'lua-language-server', '--stdio' },
            root_dir = root_dir[1],
            settings = {
                Lua = {
                    runtime = {
                        -- Tell the language server which version of Lua you're using
                        -- (most likely LuaJIT in the case of Neovim)
                        version = 'LuaJIT'
                    },
                    -- Make the server aware of Neovim runtime files
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME
                        }
                    }
                }
            }
        })
    end
})

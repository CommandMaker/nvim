return {
    -- Colorscheme
    {
        'bjarneo/ash.nvim',
        config = function()
            local ash = require('ash')

            ash.setup({
                plugins = {
                    indent_blankline = false
                },
                colors = {
                    border = '#626262',
                    bg_highlight = ''
                }
            })

            vim.cmd [[colorscheme ash]]

            vim.api.nvim_set_hl(0, 'NvimTreeFolderArrowClosed', { link = 'NvimTreeFolderName' })
            vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', { link = 'NvimTreeFolderName' })
            vim.api.nvim_set_hl(0, 'IblIndent', { fg = '#626262' })
            vim.api.nvim_set_hl(0, 'IblScope', { fg = '#9e9e9e' })
            vim.api.nvim_set_hl(0, 'BlinkCmpMenuSelection', { fg = '#e0e0e0', bg = '#2a2a2a' })
        end
    },

    -- File explorer
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        opts = {
            view = {
                side = 'right'
            },
            renderer = {
                group_empty = false,
                indent_markers = {
                    enable = true
                },
            },
            filters = {
                dotfiles = true,
                git_ignored = false,
            }
        },
        config = function(_, opts)
            -- Disable netrw
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1

            require('nvim-tree').setup(opts)
        end
    },

    -- Buffer switcher
    {
        'leath-dub/snipe.nvim',
        keys = {
            { 'gb', function () require('snipe').open_buffer_menu() end }
        },
        opts = {
            ui = {
                position = 'cursor',
                persist_tags = false
            },
            sort = 'last'
        }
    },

    -- Fuzzy file search
    {
        'ibhagwan/fzf-lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        opts = {
            fzf_colors = true,
            files = {
                formatter = 'path.filename_first',
                fd_opts = [[--color=never --hidden --type f --type l --exclude .git --exclude vendor --exclude node_modules --exclude vendor --exclude __pycache__ --exclude __init__.py]],
                no_ignore = true,
            },
            keymap = {
                fzf = {
                    ['alt-q'] = 'select-all+accept'
                }
            }
        }
    },

    -- Status line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = {
                globalstatus = true,
                section_separators = '',
                component_separators = ''
            }
        }
    },
}

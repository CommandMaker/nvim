return {
    -- Colorscheme
    {
        'bjarneo/ash.nvim',
        config = function()
            vim.cmd('colorscheme ash')

            vim.api.nvim_set_hl(0, 'NvimTreeFolderArrowClosed', { link = 'NvimTreeFolderName' })
            vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', { link = 'NvimTreeFolderName' })
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
                }
            },
            filters = {
                dotfiles = true
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
                fd_opts = [[--color=never --hidden --type f --type l --exclude .git --exclude vendor --exclude node_modules --exclude vendor --exclude __pycache__ --exclude __init__.py]]
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
                -- colored = false,
                globalstatus = true,
                section_separators = '',
                component_separators = ''
            }
        }
    },
}

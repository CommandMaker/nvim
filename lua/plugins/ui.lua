return {
    -- Colorscheme
    {
        'bjarneo/ash.nvim',
        config = function(_, opts)
            vim.cmd('colorscheme ash')
        end
    },

    -- File explorer
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        opts = {
           renderer = {
               group_empty = false,

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
            fzf_colors = true
        }
    }
}

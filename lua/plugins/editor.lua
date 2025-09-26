return {
    -- Autopairs brackets, parethesis, ...
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = true
    },

    -- Better syntax highlight
    {
        'nvim-treesitter/nvim-treesitter',
        opts = {
            ensure_installed = {
                'c',
                'cpp',
                'lua',
                'vim',
                'vimdoc',
                'markdown',
                'markdown_inline',
                'html',
                'css',
                'php',
                'blade',
                'javascript',
                'typescript',
                'jsdoc',
                'tsx',
                'vue',
                'lua'
            },
            auto_install = true,
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            },
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ['ic'] = '@assignment.lhs',
                        ['ix'] = '@assignment.rhs',
                        ['ir'] = '@return.inner',
                        ['ar'] = '@return.outer',
                        ['af'] = '@function.outer',
                        ['if'] = '@function.inner',
                        ['in'] = '@number.inner',
                        ['itn'] = '@html.tagname'
                    }
                },
                swap = {
                    enable = true,
                    swap_next = {
                        ['<leader>a'] = '@parameter.inner',
                    },
                    swap_previous = {
                        ['<leader>A'] = '@parameter.inner'
                    }
                }
            }
        },
        config = function(_, opts)
            require('nvim-treesitter.configs').setup(opts)


            local parser_config = require 'nvim-treesitter.parsers'.get_parser_configs()
            parser_config.blade = {
                install_info = {
                    url = 'https://github.com/EmranMR/tree-sitter-blade',
                    files = { 'src/parser.c' },
                    branch = 'main',
                },
                filetype = 'blade',
            }
        end
    },
    {
        'CommandMaker/nvim-treesitter-textobjects',
        dependencies = {
            'nvim-treesitter/nvim-treesitter'
        }
    },
    {
        'windwp/nvim-ts-autotag',
        otps = {
            opts = {
                enable_close_on_slash = true
            }
        }
    }
}

return {
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
}

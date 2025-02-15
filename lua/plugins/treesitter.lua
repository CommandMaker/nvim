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
    config = function (_, opts)
        require('nvim-treesitter.configs').setup(opts)
    end
}

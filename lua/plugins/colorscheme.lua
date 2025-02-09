return {
    'rose-pine/neovim',
    name = 'rose-pine',
    opts = {
        variant = 'main',
        dark_variant = 'main'
    },
    config = function(_, opts)
        require('rose-pine').setup(opts)

        vim.cmd('colorscheme rose-pine')
    end
}

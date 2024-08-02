return {
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd[[colorscheme tokyonight]]
            require('plugins.colorscheme')
        end
    },
    -- File Manager
    {
        'stevearc/oil.nvim',
        lazy = false,
        dependencies = { { 'echasnovski/mini.icons', opts = {} } },
        config = function ()
            require('plugins.filemanager')
        end
    },
    -- Autopair brackets, quotes, ...
    {
        'windwp/nvim-autopairs',
        lazy = false,
        config = function()
            require('nvim-autopairs').setup {}
        end
    },
    -- Buffer switcher
    {
        'leath-dub/snipe.nvim',
        lazy = false,
        config = function()
            require('plugins.snipe')
        end
    },
    -- Status line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        lazy = false,
        config = function()
            require('plugins.statusbar')
        end
    },
    -- File searching across the project
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        lazy = false,
        config = function()
            require('plugins.telescope')
        end
    },
    -- Learn VIM the hard way
    {
        'm4xshen/hardtime.nvim',
        dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
        lazy = false,
        config = function()
            require('hardtime').setup {}
        end
    },
    -- Class structure / Diagnostics and more
    {
        'folke/trouble.nvim',
        lazy = false,
        config = function()
            require('plugins.trouble')
        end
    },
    -- RipGrep support
    {
        'duane9/nvim-rg',
        lazy = false,
        config = false
    },
    -- Xcode support
    {
        'wojciech-kulik/xcodebuild.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'stevearc/oil.nvim'
        },
        config = function()
            require('xcodebuild').setup {}
        end,
    }
}

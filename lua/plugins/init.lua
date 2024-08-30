return {
    {
        'folke/tokyonight.nvim',
        priority = 1000,
        config = function()
            require('plugins.colorscheme')
            vim.cmd[[colorscheme tokyonight]]
        end
    },
    -- File Manager
    {
        'stevearc/oil.nvim',
        dependencies = { { 'echasnovski/mini.icons', opts = {} } },
        config = function ()
            require('plugins.filemanager')
        end
    },
    -- Autopair brackets, quotes, ...
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = function()
            require('plugins.autopairs')
        end
    },
    -- Buffer switcher
    {
        'leath-dub/snipe.nvim',
        config = function()
            require('plugins.snipe')
        end
    },
    -- Status line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('plugins.statusbar')
        end
    },
    -- File searching across the project
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('plugins.telescope')
        end
    },
    -- Learn VIM the hard way
    {
        'm4xshen/hardtime.nvim',
        dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
        config = function()
            require('hardtime').setup {}
        end
    },
    -- Xcode support
    {
        'wojciech-kulik/xcodebuild.nvim',
        enabled = vim.fn.has('macunix'),
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'stevearc/oil.nvim'
        },
        config = function()
            require('xcodebuild').setup {}
        end,
    },
    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        event = 'BufReadPre',
        cmd = 'TSUpdate',
        config = function()
            require('plugins.treesitter')
        end
    },
    -- Improved navigation inside the current line
    {
        'folke/flash.nvim',
        event = 'BufEnter',
        keys = {
            { 's', mode = { 'n', 'x', 'o' }, function() require('flash').jump() end,   desc = 'Flash' },
            { 'r', mode = 'o',               function() require('flash').remote() end, desc = 'Remote Flash' },
        },
        config = function()
            require('plugins.flashsearch')
        end
    },
    {
        'ibhagwan/fzf-lua',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            winopts = {
                backdrop = 100
            },
            files = {
                formatter = 'path.filename_first'
            }
        },
        config = function()
            require('plugins.fzf')
        end
    }
}

return {
    'folke/flash.nvim',
    keys = {
        { 's', mode = { 'n', 'x', 'o' }, function() require('flash').jump() end,   desc = 'Flash' },
        { 'r', mode = 'o',               function() require('flash').remote() end, desc = 'Remote Flash' },
    },
    opts = {
        search = {
            multi_window = false,
            wrap = false,
        },
        modes = {
            char = {
                keys = { 'f', 'F', 't', 'T' },
                multi_line = false,
                highlight = {
                    backdrop = false
                }
            }
        }
    }
}

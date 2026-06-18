----------------------------------------------
--               Colorscheme                --
----------------------------------------------

local status, color = pcall(require, 'ash')

if not status then
    return
end

color.setup {
    plugins = {
        indent_blankline = false
    },
    color = {
        border = '#626262',
        bg_highlight = ''
    }
}

vim.cmd [[colorscheme ash]]

vim.api.nvim_set_hl(0, 'NvimTreeFolderArrowClosed', { link = 'NvimTreeFolderName' })
vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', { link = 'NvimTreeFolderName' })
vim.api.nvim_set_hl(0, 'IblIndent', { fg = '#626262' })
vim.api.nvim_set_hl(0, 'IblScope', { fg = '#9e9e9e' })
vim.api.nvim_set_hl(0, 'BlinkCmpMenuSelection', { fg = '#e0e0e0', bg = '#2a2a2a' })

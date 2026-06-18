----------------------------------------------
--               File explorer              --
----------------------------------------------

local status, nvimtree = pcall(require, 'nvim-tree')

if not status then
    return
end

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
    view = {
        side = 'right'
    },
    renderer = {
        group_empty = false,
        indent_markers = {
            enable = true
        },
    },
    filters = {
        dotfiles = false,
        git_ignored = false,
    }
})

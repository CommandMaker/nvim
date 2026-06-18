----------------------------------------------
--               Treesitter                 --
----------------------------------------------

local status, treesitter = pcall(require, 'nvim-treesitter')

if not status then
    return
end


local basic_parsers = {
    'c',
    'cpp',
    'lua',
    'vim',
    'vimdoc',
    'python',
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
}

if vim.env.LIGHTWEIGHT ~= nil then
    basic_parsers = {
        'c',
        'cpp',
        'lua',
        'vim',
        'python'
    }
end

treesitter.install(basic_parsers)

-- Enable syntax highlight
vim.api.nvim_create_autocmd('FileType', {
    pattern = basic_parsers,
    callback = function ()
        vim.treesitter.start()

        -- indentation, provided by nvim-treesitter
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
})


-- Textobjects
--=====================

local status, textobjects = pcall(require, 'nvim-treesitter-textobjects')

if not status then
    return
end

-- Disable the built-in ftplugin mappings
vim.g.no_plugin_maps = true

textobjects.setup {
    select = {
        lookahead = true
    }
}

-- To see the mappings, see the lua/core/keymaps.lua file

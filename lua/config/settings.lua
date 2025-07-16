local options = {
    list           = true,                                        -- Enable the char list
    showmode       = false,                                       -- Hide mode in the status bar (disable twice render because of lualine)
    clipboard      = 'unnamed,unnamedplus',                       -- Copy-paste between vim and everything else
    swapfile       = false,                                       -- Disable the swaps files
    tabstop        = 4,                                           -- Set tab to 4 spaces
    softtabstop    = 4,                                           -- Set tab to 4 spaces
    shiftwidth     = 4,                                           -- Set tab to 4 spaces
    expandtab      = true,                                        -- Use spaces instead of tabs
    smartindent    = true,                                        -- Enable smart indenting
    number         = true,                                        -- Show lines numbers
    relativenumber = true,                                        -- Show relative lines numbers
    signcolumn     = 'yes:1',                                     -- Add an extra line column
    splitright     = true,                                        -- Vertical split will be at right
    termguicolors  = true,                                        -- Correct terminal colors
    undofile       = true,                                        -- Set undo to file
    cursorline     = true,                                        -- Highlight current line
    scrolloff      = 8,                                           -- Keep space when scrolling
    completeopt    = 'menu,menuone,popup,noinsert,noselect',      -- Set the omnicomplete options to show the completion menu
    foldmethod     = 'manual',                                    -- Enable manual creation of folds
    foldcolumn     = '1'                                          -- Display folds in the line numbers column
}

vim.opt.listchars:append('lead:·')
vim.opt.listchars:append('trail:·')
vim.opt.listchars:remove('space:·')
vim.opt.listchars:remove('eol')

for i, j in pairs(options) do
    vim.opt[i] = j
end

-- Because on my keyboard mapping the @ key is next to w (thanks macOS), I always type :w@ and it creates a file named '@' at the root of my project
-- So I just remap the :w@ command to :w
vim.cmd('abbreviate w@ w')

vim.diagnostic.config({
    virtual_text = true
})

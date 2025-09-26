----------------------------------------------
--                Settings                  --
----------------------------------------------

local options = {
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
    splitright     = true,                                        -- Vertical split will be at right
    termguicolors  = true,                                        -- Correct terminal colors
    undofile       = true,                                        -- Set undo to file
    cursorline     = true,                                        -- Highlight current line
    scrolloff      = 8,                                           -- Keep space when scrolling
    completeopt    = 'menu,menuone,popup,noinsert,noselect',      -- Set the omnicomplete options to show the completion menu
    foldmethod     = 'manual'                                     -- Enable manual creation of folds
}

for i, j in pairs(options) do
    vim.opt[i] = j
end

-- Set leader and local leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Because on my keyboard mapping the @ key is next to w (thanks macOS), I always type :w@ and it creates a file named '@' at the root of my project
-- So I just remap the :w@ command to :w
vim.cmd('abbreviate w@ w')


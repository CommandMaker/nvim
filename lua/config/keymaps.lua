local key = vim.keymap.set

local silent = { silent = true }

-- Open file explorer
key('n', '<C-e>', ':Oil<CR>', silent)

-- Close buffer
key('n', '<S-q>', ':bd<CR>', silent)

-- Open buffer switching
key('n', 'gb', ':lua require("snipe").open_buffer_menu()<CR>', silent)

-- Navigation in insert mode
key('i', '<C-h>', '<Left>', silent)
key('i', '<C-j>', '<Down>', silent)
key('i', '<C-k>', '<Up>', silent)
key('i', '<C-l>', '<Right>', silent)

-- File searching
key('n', '<C-p>', ':Telescope find_files<CR>', silent)

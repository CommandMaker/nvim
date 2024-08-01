local key = vim.keymap.set

local silent = { silent = true }

-- Open file explorer
key('n', '<C-e>', ':Oil<CR>', silent)

-- Close buffer
key('n', '<S-q>', ':bd<CR>', silent)

-- Open buffer switching
key('n', 'gb', ':lua require("snipe").open_buffer_menu()<CR>', silent)

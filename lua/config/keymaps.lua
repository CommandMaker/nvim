local key = vim.keymap.set

local silent = { silent = true }

-- Open file explorer
key('n', '<C-e>', ':Oil<CR>', silent)

----------------------------------------------
--                 Keymaps                  --
----------------------------------------------

local key = vim.keymap.set
local silent = { silent = true }

-- Replace Escape with jk
key({ 'i' }, 'jk', '<esc>', silent)

-- Movements in insert and command mode
key({ 'i', 'c' }, '<C-h>', '<Left>', silent)
key({ 'i', 'c' }, '<C-j>', '<Down>', silent)
key({ 'i', 'c' }, '<C-k>', '<Up>', silent)
key({ 'i', 'c' }, '<C-l>', '<Right>', silent)

-- Cut character to the a register instead of clipboard
key('n', 'x', '"ax', silent)
key('n', 'X', '"aX', silent)
key('v', 'x', '"ax', silent)
key('v', 'X', '"aX', silent)

-- Don't yank on visual paste
key('v', 'p', '"_dP', silent)

-- Keep visual mode while indenting
key('v', '<', '<gv', silent)
key('v', '>', '>gv', silent)

-- Indent the current line in normal mode
key('n', '<leader><', ':<<CR>', silent)
key('n', '<leader>>', ':><CR>', silent)

-- Move selected line / block of text in visual mode
key('v', 'K', ':move \'<-2<CR>gv-gv', silent)
key('v', 'J', ':move \'>+1<CR>gv-gv', silent)

-- Open file explorer
key('n', '<leader>e', ':NvimTreeToggle<CR>', silent)

-- Close buffer
key('n', '<leader>q', ':bd<CR>', silent)

-- File picker
key('n', '<leader>f', ':FzfLua files<CR>', silent)

-- Grep in project
key('n', '<leader>g', ':FzfLua live_grep<CR>', silent)

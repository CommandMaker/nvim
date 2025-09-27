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

-- Move between diagnostics
key('n', '<leader>dn', ']d', { remap = true })
key('n', '<leader>dN', '[d', { remap = true })
key('n', '<leader>df', '[D', { remap = true })
key('n', '<leader>dl', ']D', { remap = true })

-- LSP keymaps
key('n', '<leader>gf', vim.lsp.buf.format, silent)
key('n', '<leader>gz', '<C-w>d', { remap = true })
key('n', '<leader>gd', vim.lsp.buf.definition, silent)
key('n', '<leader>ga', vim.lsp.buf.code_action, silent)

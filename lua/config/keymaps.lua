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

key('c', '<C-h>', '<Left>', silent)
key('c', '<C-j>', '<Down>', silent)
key('c', '<C-k>', '<Up>', silent)
key('c', '<C-l>', '<Right>', silent)

-- File searching
key('n', '<C-p>', ':FzfLua files<CR>', silent)

-- Open FzfLua
key('n', '<C-f>', ':FzfLua<CR>', silent)

-- Search through Neovim help
key('n', '<C-&>', ':Telescope help_tags<CR>', silent)

-- Trigger autocomplete with Ctrl+Space
key('i', '<C-Space>', '<C-x><C-o>', silent)

-- Close omnifunc and go to next line when enter is pressed
key('i', '<CR>', 'pumvisible() ? "<C-e><CR>" : "<CR>"', { expr = true, silent = true })

-- Exit terminal mode with escape (because default mapping is not working on my macOS)
key('t', '<ESC>', '<C-\\><C-n>', silent)

-- Don't yank on delete char
key('n', 'x', '"_x', silent)
key('n', 'X', '"_X', silent)
key('v', 'x', '"_x', silent)
key('v', 'X', '"_X', silent)

-- Don't yank on visual paste
key('v', 'p', '"_dP', silent)

-- Keep visual mode while indenting
key('v', '<', '<gv', silent)
key('v', '>', '>gv', silent)

-- Indent the current line in normal mode
key('n', '<', ':<<CR>', silent)
key('n', '>', ':><CR>', silent)

-- Move selected line / block of text in visual mode
key('v', 'K', ':move \'<-2<CR>gv-gv', silent)
key('v', 'J', ':move \'>+1<CR>gv-gv', silent)

-- Faster move through the current line
key('i', '<C-^>', '<C-o>^', silent)
key('i', '<C-$>', '<C-o>$', silent)

-- Resize the current split
key('n', '<C-o>', ':vert resize +10<CR>', silent)
key('n', '<C-l>', ':vert resize -10<CR>', silent)

-- LSP keymaps
key('n', 'gd', ':Telescope lsp_definitions<CR>', silent)
key('n', 'gz', ':lua vim.diagnostic.open_float()<CR>', silent)
key('n', 'ga', ':FzfLua lsp_code_actions<CR>', silent)
key('n', 'gf', ':lua vim.lsp.buf.format()<CR>', silent)
key('n', 'gr', ':lua vim.lsp.buf.rename()<CR>', silent)

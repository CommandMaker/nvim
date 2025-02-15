return {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        files = {
            formatter = 'path.filename_first'
        },
        keymap = {
            fzf = {
                ['alt-q'] = 'select-all+accept'
            }
        }
    }
}

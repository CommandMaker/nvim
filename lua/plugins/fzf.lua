return {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        files = {
            formatter = 'path.filename_first',
            fd_opts = [[--color=never --hidden --type f --type l --exclude .git --exclude vendor --exclude node_modules --exclude vendor --exclude __pycache__ --exclude __init__.py --exclude .pnpm-store]]
        },
        keymap = {
            fzf = {
                ['alt-q'] = 'select-all+accept'
            }
        }
    }
}

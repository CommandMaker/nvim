local status, fzf = pcall(require, 'fzf-lua')

if not status then
    return
end

fzf.setup {
    keymap = {
        fzf = {
            ['ctrl-q'] = 'select-all+accept',
        },
    },
}

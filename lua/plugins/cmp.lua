----------------------------------------------
--                Completion                --
----------------------------------------------

local status, blink = pcall(require, 'blink.cmp')

if not status then
    return
end

blink.setup {
    keymap = {
        preset = 'default'
    },
    appearance = {
        nerd_font_variant = 'mono'
    },
    sources = {
        default = {
            'lsp',
            'path',
            'snippets'
        }
    }
}

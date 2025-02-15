return {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    version = '*',
    event = { 'InsertEnter', 'CmdlineEnter' },
    opts = {
        keymap = { preset = 'default' },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono'
        },
        sources = {
            default = { 'lsp', 'path', 'snippets' },
        },
        completion = {
            ghost_text = { enabled = true },
        }
    },
    opts_extend = { 'sources.default' },
}

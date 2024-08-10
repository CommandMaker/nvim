local status, flash = pcall(require, 'flash')

if not status then
    return
end

flash.setup {
    search = {
        multi_window = false,
        wrap = false,
    },
    modes = {
        char = {
            keys = { 'f', 'F', 't', 'T' },
            multi_line = false,
            highlight = {
                backdrop = false
            }
        }
    }
}

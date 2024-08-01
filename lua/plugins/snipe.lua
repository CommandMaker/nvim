local status, snipe = pcall(require, 'snipe')

if not status then
    return
end

snipe.setup {
    ui = {
        position = 'cursor'
    }
}

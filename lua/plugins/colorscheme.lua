local status, colorscheme = pcall(require, 'tokyonight')

if not status then
    return
end

colorscheme.setup {}

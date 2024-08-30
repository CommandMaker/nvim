local status, npairs = pcall(require, 'nvim-autopairs')

if not status then
    return
end

local Rule = require('nvim-autopairs.rule')

npairs.setup {
    fast_wrap = {
        map = '<F5>'
    }
}

npairs.add_rules({
    Rule('<', '>', { 'html', 'typescriptreact' })
})

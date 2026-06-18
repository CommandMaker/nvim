----------------------------------------------
--                 License                  --
----------------------------------------------

local status, header = pcall(require, 'header')

if not status then
    return
end

header.setup({
    author_from_git = true,
    license_from_file = true
})

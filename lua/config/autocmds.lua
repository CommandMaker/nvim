local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Helper function (only works for values-only tables like { 'hello', 'world' })
local function contains(table, key)
    for _, val in ipairs(table) do
        if val == key then
            return true
        end
    end

    return false
end

-- Remove all trailing whitespaces from file when save
-- You can disable it for specific filetypes by adding it to the pattern match inside the callback
augroup('WhitespacesRelated', { clear = true })
autocmd('BufWritePre', {
    group = 'WhitespacesRelated',
    pattern = '*',
    callback = function()
        local excluded_patterns = { 'markdown' }

        if contains(excluded_patterns, vim.bo.filetype) then
            return
        end

        vim.cmd[[%s/\s\+$//e]]
    end
})

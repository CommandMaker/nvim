local status, telescope = pcall(require, 'telescope')

if not status then
    return
end

telescope.setup {
    defaults = {
        file_ignore_patterns = { '.git/' }
    },
    pickers = {
        find_files = {
            hidden = true,
            previewer = false,
            layout_config = {
                prompt_position = 'top'
            },
            sorting_strategy = 'ascending'
        }
    }
}

-- Remove the border and the title on the prompt
vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = '#1e2030', fg = '#1e2030' })
vim.api.nvim_set_hl(0, 'TelescopePromptTitle', { bg = '#1e2030' })
vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = '#1e2030' })

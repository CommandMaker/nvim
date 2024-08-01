local autocmd = vim.api.nvim_create_autocmd

autocmd('LspAttach', {
    desc = 'Some various actions when LSP is attaching to a buffer',
    callback = function(args)
        local bufnr = args.buf
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        vim.lsp.completion.enable(true, client.id, bufnr)
    end
})

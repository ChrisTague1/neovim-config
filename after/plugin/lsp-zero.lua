local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'ts_ls',
        'eslint',
        'rust_analyzer',
        'svelte',
        'tailwindcss',
        'pylsp',
        'svelte'
    },
    handlers = {
        lsp_zero.default_setup,
    },
})

vim.g.python3_host_prog = vim.fn.expand('~/.config/nvim/venv/bin/python')

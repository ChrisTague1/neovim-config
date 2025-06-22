-- ~/.config/nvim/lua/plugins/lsp.lua
return {
    -- Mason for LSP server management
    {
        "mason-org/mason.nvim",
        opts = {},
    },

    -- Bridge between Mason and lspconfig
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = { "mason.nvim" },
        opts = {
            -- Auto-install these servers
            ensure_installed = {
                "lua_ls",        -- Lua
                "pyright",       -- Python
                "ts_ls",         -- TypeScript/JavaScript
                "rust_analyzer", -- Rust
                "clangd",        -- C/C++
                -- Add any others you commonly use
            },
            -- Automatically enable any installed server
            automatic_enable = true,
        },
    },

    -- Autocompletion engine
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", -- LSP completions
            "hrsh7th/cmp-buffer",   -- Buffer completions
            "hrsh7th/cmp-path",     -- Path completions
            "hrsh7th/cmp-cmdline",  -- Command line completions
        },
        config = function()
            local cmp = require('cmp')

            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    -- Scroll through completion menu
                    ['<C-j>'] = cmp.mapping.select_next_item(),
                    ['<C-k>'] = cmp.mapping.select_prev_item(),

                    -- Alternative: use arrow keys
                    ['<Down>'] = cmp.mapping.select_next_item(),
                    ['<Up>'] = cmp.mapping.select_prev_item(),

                    -- Scroll docs in completion popup
                    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),

                    -- Trigger completion manually
                    ['<C-Space>'] = cmp.mapping.complete(),

                    -- Cancel completion
                    ['<C-e>'] = cmp.mapping.abort(),

                    -- Accept completion
                    ['<CR>'] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true
                    }),
                    ['<Tab>'] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true
                    }),
                }),

                sources = cmp.config.sources({
                    { name = 'nvim_lsp' }, -- LSP completions (highest priority)
                    { name = 'buffer' },   -- Text from current buffer
                    { name = 'path' },     -- File paths
                }),

                -- Completion menu appearance
                formatting = {
                    fields = { "kind", "abbr", "menu" },
                    format = function(entry, item)
                        local menu_icon = {
                            nvim_lsp = "λ",
                            buffer = "Ω",
                            path = "🖿",
                        }
                        item.menu = menu_icon[entry.source.name]
                        return item
                    end,
                },

                -- Completion window appearance
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
            })

            -- Command line completion
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'cmdline' }
                }
            })

            -- Search completion
            cmp.setup.cmdline({ '/', '?' }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'buffer' }
                }
            })
        end,
    },

    -- LSP configuration
    {
        "neovim/nvim-lspconfig",
        dependencies = { "mason-lspconfig.nvim", "nvim-cmp" },
        config = function()
            -- Enhanced diagnostics configuration
            vim.diagnostic.config({
                virtual_text = {
                    prefix = "●",
                    source = "if_many",
                },
                signs = true,
                underline = true,
                update_in_insert = false,
                severity_sort = true,
                float = {
                    focusable = false,
                    style = "minimal",
                    border = "rounded",
                    source = "always",
                    header = "",
                    prefix = "",
                },
            })

            -- LSP keymaps and setup
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    local opts = { buffer = ev.buf, silent = true }

                    -- Navigation
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
                    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
                    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)

                    -- Documentation
                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)

                    -- Code actions
                    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
                    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)

                    -- Formatting
                    vim.keymap.set('n', '<space>f', function()
                        vim.lsp.buf.format { async = true }
                    end, opts)

                    -- Diagnostics (errors/warnings)
                    vim.keymap.set('n', 'gl', vim.diagnostic.open_float, opts) -- Your requested keymap!
                    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
                    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
                    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
                end,
            })
        end,
    },
}

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
        "lua_ls",           -- Lua
        "pyright",          -- Python  
        "ts_ls",            -- TypeScript/JavaScript
        "rust_analyzer",    -- Rust
        "clangd",           -- C/C++
        -- Add any others you commonly use
      },
      -- Automatically enable any installed server
      automatic_enable = true,
    },
  },
  
  -- LSP configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason-lspconfig.nvim" },
    config = function()
      -- This single autocmd handles all LSP keymaps
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          local opts = { buffer = ev.buf, silent = true }
          
          -- Essential keymaps that "just work"
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
          vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
          vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
          vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
          end, opts)
        end,
      })
    end,
  },
}

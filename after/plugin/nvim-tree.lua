vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true
vim.keymap.set("n", "<leader>pv", function() vim.cmd('NvimTreeFindFile') end)
vim.keymap.set("n", "<leader>pt", function() vim.cmd('NvimTreeToggle') end)

local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.del('n', '<C-e>', { buffer = bufnr })
end

require("nvim-tree").setup({
  on_attach = on_attach,
  filters = {
    git_ignored = false
  }
})

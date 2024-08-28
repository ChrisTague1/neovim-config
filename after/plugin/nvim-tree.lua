vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true
vim.keymap.set("n", "<leader>pv", function() vim.cmd('NvimTreeFindFile') end)
vim.keymap.set("n", "<leader>pt", function() vim.cmd('NvimTreeToggle') end)

require("nvim-tree").setup()

-- Remap
vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', '<leader>tn', 'gt')
vim.keymap.set('n', '<leader>tp', 'gT')
vim.keymap.set('n', '<leader>tt', vim.cmd.tabnew)
vim.keymap.set('n', '<leader>to', vim.cmd.tabo)

-- Set
vim.opt.rnu = true
vim.opt.nu = true
vim.opt.scrolloff = 8

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"

-- Commands
vim.cmd([[command! CP let @+=expand('%:p')]])

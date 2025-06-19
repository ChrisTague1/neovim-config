-- config/options.lua - Editor options and settings

local opt = vim.opt

-- Line numbers
opt.number = true               -- Show line numbers
opt.relativenumber = true       -- Show relative line numbers

-- Indentation
opt.tabstop = 2                 -- Number of spaces tabs count for
opt.shiftwidth = 2              -- Size of an indent
opt.softtabstop = 2             -- Number of spaces in tab when editing
opt.expandtab = true            -- Use spaces instead of tabs
opt.smartindent = true          -- Insert indents automatically
opt.shiftround = true           -- Round indent to multiple of shiftwidth

-- Search
opt.ignorecase = true           -- Ignore case in search patterns
opt.smartcase = true            -- Don't ignore case with capitals
opt.hlsearch = false            -- Don't highlight search results
opt.incsearch = true            -- Show search results as you type

-- Appearance
opt.termguicolors = true        -- True color support
opt.signcolumn = "yes"          -- Always show sign column
opt.cursorline = true           -- Highlight current line
opt.wrap = false                -- Disable line wrap
opt.scrolloff = 8               -- Lines to keep above and below cursor
opt.sidescrolloff = 8           -- Columns to keep to the left and right

-- Editor behavior
opt.mouse = "a"                 -- Enable mouse in all modes
opt.clipboard = "unnamedplus"   -- Use system clipboard
opt.undofile = true             -- Save undo history
opt.swapfile = false            -- Disable swap files
opt.backup = false              -- Disable backup files
opt.updatetime = 250            -- Faster completion
opt.timeoutlen = 300            -- Time to wait for mapped sequence

-- Splits
opt.splitright = true           -- Vertical splits to the right
opt.splitbelow = true           -- Horizontal splits below

-- Performance
opt.lazyredraw = true           -- Don't redraw while executing macros
opt.synmaxcol = 240             -- Max column for syntax highlight

-- Completion
opt.completeopt = { "menu", "menuone", "noselect" }
opt.pumheight = 10              -- Maximum number of completion items

-- File handling
opt.fileencoding = "utf-8"      -- File encoding
opt.conceallevel = 0            -- So that `` is visible in markdown files

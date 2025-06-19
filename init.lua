-- init.lua - Main Neovim configuration entry point
-- This file loads all configuration modules

-- Set leader keys before loading lazy.nvim
vim.g.mapleader = " "           -- Space as leader key
vim.g.maplocalleader = "\\"     -- Backslash as local leader

-- Load configuration modules
require("config.options")       -- Editor options and settings
require("config.lazy")          -- Plugin manager setup
require("config.mappings")      -- Key mappings
require("config.autocmds")      -- Autocommands

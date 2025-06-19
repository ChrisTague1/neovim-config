# Neovim Configuration

A modern, well-structured Neovim configuration built from scratch using Lua.

## Installation

1. Copy this configuration to your Neovim config directory:
   - **Linux/MacOS**: `~/.config/nvim/`
   - **Windows**: `~/AppData/Local/nvim/`

2. Start Neovim and lazy.nvim will automatically install all plugins

3. Run `:checkhealth` to verify everything is working correctly

## Structure

```
~/.config/nvim/
├── init.lua                 # Main entry point
├── lua/
│   ├── config/
│   │   ├── options.lua      # Editor settings
│   │   ├── mappings.lua     # Key mappings
│   │   ├── autocmds.lua     # Autocommands
│   │   └── lazy.lua         # Plugin manager setup
│   └── plugins/
│       ├── colorscheme.lua  # Color themes
│       ├── telescope.lua    # Fuzzy finder
│       ├── treesitter.lua   # Syntax highlighting
│       ├── lspconfig.lua    # Language servers
│       ├── completion.lua   # Auto-completion
│       ├── ui.lua          # UI enhancements
│       └── editing.lua     # Editing tools
```

## Essential Plugins Included

**Core Features:**
- **lazy.nvim** - Modern plugin manager with lazy loading
- **telescope.nvim** - Fuzzy finder for files, buffers, and more
- **nvim-treesitter** - Advanced syntax highlighting
- **nvim-lspconfig** - Language Server Protocol support
- **nvim-cmp** - Auto-completion engine

**UI Enhancements:**
- **tokyonight.nvim** - Beautiful color scheme
- **lualine.nvim** - Status line
- **neo-tree.nvim** - File explorer
- **which-key.nvim** - Key binding helper
- **nvim-notify** - Notifications

**Editing Tools:**
- **gitsigns.nvim** - Git integration
- **Comment.nvim** - Smart commenting
- **nvim-surround** - Surround text objects
- **nvim-autopairs** - Auto-close brackets
- **mini.ai** - Better text objects

## Key Bindings

**Leader key**: `<Space>`

**File Operations:**
- `<leader>ff` - Find files
- `<leader>fg` - Find in files (grep)
- `<leader>fb` - Find buffers
- `<leader>fr` - Recent files

**Window Management:**
- `<C-h/j/k/l>` - Navigate windows
- `<leader>w-` - Split horizontally
- `<leader>w|` - Split vertically

**LSP Features:**
- `gd` - Go to definition
- `gr` - Find references
- `K` - Hover documentation
- `<leader>ca` - Code actions
- `<leader>rn` - Rename symbol

**Git:**
- `]h` / `[h` - Next/previous hunk
- `<leader>ghs` - Stage hunk
- `<leader>ghr` - Reset hunk

## Getting Started

1. Learn Vim motions: `:help motion.txt` or run `:Tutor`
2. Explore plugins with `:Lazy`
3. Check LSP status with `:LspInfo`
4. Install language servers with `:Mason`
5. Customize by editing files in `lua/plugins/`

## Adding More Languages

To add support for new programming languages:

1. Open `:Mason` and install the language server
2. Add the server to `lua/plugins/lspconfig.lua` in the `servers` table
3. Add the language to treesitter in `lua/plugins/treesitter.lua`

Example for Python:
```lua
-- In lspconfig.lua servers table
pyright = {},

-- In treesitter.lua ensure_installed
"python",
```

This configuration provides a solid foundation that you can build upon!

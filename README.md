# Neovim Config
- Followed [this tutorial](https://www.youtube.com/watch?v=w7i4amO_zaE) to setup this config
- Use [this link](https://github.com/wbthomason/packer.nvim) to install `Packer`, the dependency manager used in this configuration.
- To add more dependencies:
  - `:so` to make Packer recognize changes
  - `:PackerSync` to download new stuff
- Add more LSP's to `./after/plugin/lsp.lua`
- Run `:Mason` to view many LSP options
- In case of emergency: (made of Ubuntu, may be slightly different depending on OS)
  - `rm -rf ~/.local/share/nvim ~/.local/state/nvim ~/.config/nvim ~/.cache/nvim`
  - `sudo apt-get purge --auto-remove neovim`
  - `sudo apt-get install neovim`
  - Reinstall [packer](https://github.com/wbthomason/packer.nvim)

# Markdown Preview
[Github Page](https://github.com/iamcco/markdown-preview.nvim)
- `:MarkdownPreview` to start a local preview in browser
- `:MarkdownPreviewStop` to stop it

# Keybindings
- `Ctrl + o` to go back in jump list
- `Ctrl + i` to go forward in jump list
- `Ctrl + w ` followed by `h, j, k, l` to navigate between windows
- `Ctrl + e` - view harpoon menu
- `Ctrl + z, x, c or v` - go to the 1st, 2nd, 3rd, or 4th harpoon file
- `Ctrl + p` - fuzzy finder for git files
- `Ctrl + u, d` - go up or down in the file
- `gr` - Go to references of the thing under the cursor
- `gd` - Go to the decleration of the thing under the cursor
- `space + a` - Add current file to harpoon
- `space + p + f` - file fuzzy finder

# Stuff I gotta do
- More VS Code like colors
- HTML indentation

Use this https://www.reddit.com/r/neovim/comments/v4mhsv/neovim_setup_for_fullstack_web_development_with/

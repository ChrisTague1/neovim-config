require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "c",
        "lua",
        "vim",
        "javascript",
        "typescript",
        "java",
        "python",
        "tsx",
        "cpp",
        "svelte",
        "css",
        'scss',
        'toml',
        'go'
    },
    sync_install = false,
    auto_install = true,
    indent = {
        enable = true
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

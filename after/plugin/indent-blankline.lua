require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"},
    filetype_exclude = {"help", "dashboard", "packer", "lspinfo", "TelescopePrompt", "TelescopeResults"},
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
}

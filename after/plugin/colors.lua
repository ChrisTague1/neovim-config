function OneDark(opts)
    opts = opts or {}
    local color = opts.color or 'deep'
    local transparent = opts.transparent == nil and true or opts.transparent

    require('onedark').setup {
        style = color,
        transparent = transparent
    }
    require('onedark').load()

end

OneDark()

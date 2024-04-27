function OneDark(color)
    color = color or 'deep'

    require('onedark').setup {
        style = color,
        transparent = true
    }
    require('onedark').load()

end


OneDark()

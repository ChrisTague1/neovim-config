function OneDark(color)
    color = color or 'deep'

    require('onedark').setup {
        style = color
    }
    require('onedark').load()
end

OneDark()

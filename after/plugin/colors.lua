function OneDark(color)
    color = color or 'deep'

    require('onedark').setup {
        style = color,
    }
    require('onedark').load()

end

function Ayu()
    require('ayu').setup({
        mirage = true
    })
    require('ayu').colorscheme()
end

OneDark()

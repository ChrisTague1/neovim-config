function RosePine(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function Tokyo(color)
    color = color or 'night'

    require("tokyonight").setup({ style = color })
    vim.cmd[[colorscheme tokyonight]]
end

function OneDark(color)
    color = color or 'deep'

    require('onedark').setup {
        style = color
    }
    require('onedark').load()
end

function Catppuccin(color)
    color = color or 'mocha'

    require('catppuccin').setup {
        flavour = color
    }
    vim.cmd.colorscheme 'catppuccin'
end

OneDark()


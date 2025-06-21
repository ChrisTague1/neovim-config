return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "storm", -- The theme comes in three styles: storm, moon, night
                light_style = "day", -- The theme to use when the background is set to light
                transparent = false, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a terminal
                styles = {
                    comments = { italic = true },
                    keywords = { italic = true },
                    functions = {},
                    variables = {},
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
                sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows
                day_brightness = 0.3, -- Adjusts the brightness of the colors of the Day style
                hide_inactive_statusline = false, -- Enabling this will hide inactive statuslines
                dim_inactive = false, -- dims inactive windows
                lualine_bold = false, -- When true, section headers in the lualine theme will be bold
            })
            vim.cmd.colorscheme("tokyonight")
        end,
    },
}

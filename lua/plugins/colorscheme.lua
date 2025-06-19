-- plugins/colorscheme.lua - Color scheme configuration

return {
  -- Tokyo Night theme - one of the most popular themes for Neovim
  {
    "folke/tokyonight.nvim",
    lazy = false, -- Load during startup since it's the main colorscheme
    priority = 1000, -- Load before other plugins
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

  -- Catppuccin - another excellent theme option
  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = false, -- Disabled by default, enable if you prefer it over tokyonight
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = false,
        show_end_of_buffer = false,
        term_colors = false,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
        no_italic = false,
        no_bold = false,
        no_underline = false,
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      })
    end,
  },
}

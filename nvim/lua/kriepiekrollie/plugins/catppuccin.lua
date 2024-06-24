return {
	"catppuccin/nvim",
  name = "catppuccin",
	priority = 1000,

	config = function()
    require("catppuccin").setup({

      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha"
      },

      transparent_background = false,
      term_colors = true,

      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15
      },

      no_italic = true,
      no_bold = false,
      no_underline = false,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {}
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
        }
      },

    })
    vim.cmd.colorscheme "catppuccin"
	end,
}

return {
	"nvim-lualine/lualine.nvim",
	priority = 998,
  dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		require("lualine").setup({
      options = {
        theme = "base16",
        component_separators = {
          left = "│",
          right = "│"
        },
        section_separators = {
          left = "",
          right = ""
        },
      },
		})
	end,
}

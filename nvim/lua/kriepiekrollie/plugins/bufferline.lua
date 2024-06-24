return {
  "akinsho/bufferline.nvim",
  version = "*",
  priority = 999,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "catppuccin/nvim",
  },

  config = function()

    require("bufferline").setup({
    highlights = require("catppuccin.groups.integrations.bufferline").get(),
    options = {
      mode = "tabs",

      themable = true,

      separator_style = "thin",
      numbers = "ordinal",

      -- indicator = {
      --   style = 'underline',
      -- },

      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "left",
          separator = true,
        },
      },

      always_show_bufferline = true,
      sort_by = "tabs",
      },
    })
  end,
}

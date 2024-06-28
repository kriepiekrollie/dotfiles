return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.4",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },

  config = function()

    require("telescope").setup({
      pickers = {
        find_files = {
          theme = "ivy",
        },
        live_grep = {
          theme = "dropdown",
        },
        buffers = {
          theme = "ivy",
        },
        help_tags = {
          theme = "ivy",
        },
        treesitter = {
          theme = "cursor",
        },
        colorscheme = {
          enable_preview = true,
        },
      },
    })

    local map = vim.keymap.set

    local builtin = require("telescope.builtin")

    map("n", "<leader>ff", builtin.find_files, {
      noremap = true,
      desc = "Telescope: Find Files",
    })

    map("n", "<leader>fg", builtin.live_grep, {
      noremap = true,
      desc = "Telescope: Find Grep",
    })

    map("n", "<leader>fb", builtin.buffers, {
      noremap = true,
      desc = "Telescope: Find Buffers",
    })

    map("n", "<leader>fh", builtin.help_tags, {
      noremap = true,
      desc = "Telescope: Find Help",
    })

    map("n", "<leader>cc", builtin.colorscheme, {
      noremap = true,
      desc = "Telescope: Find Colorschemes",
    })

    map("n", "<leader>fo", builtin.vim_options, {
      noremap = true,
      desc = "Telescope: Find Vim Options",
    })

    map("n", "<leader>fv", builtin.treesitter, {
      noremap = true,
      desc = "Telescope: Find variables and function names.",
    })

    map("n", "<leader>fp", builtin.planets, {
      noremap = true,
      desc = "Telescope: Find planets.",
    })

  end,

}

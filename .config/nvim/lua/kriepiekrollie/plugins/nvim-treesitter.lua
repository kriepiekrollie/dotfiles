return {
  "nvim-treesitter/nvim-treesitter",
  build = "<CMD>TSUpdate",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({

      ensure_installed = {
        "c",
        "cpp",
        "python",
        "javascript",
        "css",
        "html",
        "lua",
        "vim",
        "vimdoc",
      },

      sync_install = true,
      auto_install = false,

      highlight = { 
        enable = true,
      },
      indent = { 
        enable = false,
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          node_incremental = "<TAB>",
          node_decremental = "<S-TAB>",
        }
      },

    })
  end,
}

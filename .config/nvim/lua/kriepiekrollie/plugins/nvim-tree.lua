return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require("nvim-tree").setup {
      sort_by = "case_sensitive",
      view = {
        width = 36,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    }
    vim.api.nvim_set_keymap("n", "<S-Tab>", "<CMD>NvimTreeToggle<CR>", { noremap = true })
  end,
}

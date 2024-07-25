return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {},

  config = function()

    local map = vim.keymap.set

    require("toggleterm").setup({
      direction = "float",
    })

    map("n", "<S-t>", "<CMD>ToggleTerm name=Terminal<CR>", { noremap = true })
    map("t", "<Esc>", "<C-\\><C-n><CR> <CMD>ToggleTerm<CR>", { noremap = true })

  end,
}

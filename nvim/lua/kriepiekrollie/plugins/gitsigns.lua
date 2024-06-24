return {
  "lewis6991/gitsigns.nvim",

  config = function()
    require("gitsigns").setup({})

    SignColumnEnabled = true
    vim.cmd([[set signcolumn=yes]])

    function ToggleSignColumn()
      SignColumnEnabled = not SignColumnEnabled
      if SignColumnEnabled then
        vim.cmd([[set signcolumn=yes]])
        vim.cmd([[Gitsigns toggle_signs]])
      else
        vim.cmd([[set signcolumn=no]])
        vim.cmd([[Gitsigns toggle_signs]])
      end
    end

    local map = vim.keymap.set
    map("n", "<leader>gg", ToggleSignColumn, { noremap = true, desc = "Toggle gitsigns column." })

  end,
}

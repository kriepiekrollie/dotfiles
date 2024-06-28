return {
  "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",

  config = function()
    require("toggle_lsp_diagnostics").init(vim.diagnostic.config())
    local map = vim.keymap.set
    map("n", "<Leader>ld", "<CMD>ToggleDiag<CR>", { noremap = true, desc = "Toggle LSP Diagnostics" })
  end,
}

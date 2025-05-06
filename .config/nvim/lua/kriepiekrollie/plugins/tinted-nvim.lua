return {
  "tinted-theming/tinted-nvim",
  dependencies = {
    "rktjmp/fwatch.nvim",
  },
  priority = 999,

  config = function()
    vim.cmd.colorscheme "base16-catppuccin-mocha"
    local tinted = require('tinted-colorscheme').setup("", {
      supports = {
        live_reload = true,
        tinty = true,
        tinted_shell = false,
      },
      highlights = {
        telescope = true,
        telescope_borders = false,
        indentblankline = true,
        notify = true,
        cmp = true,
        ts_rainbow = true,
        illuminate = true,
        lsp_semantic = true,
        mini_completion = true,
        dapui = true,
      }
    })
  end,
}

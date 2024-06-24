
return {
  "github/copilot.vim",
  lazy = true,
  cmd = "Copilot",

  init = function()
    vim.keymap.set('n', '<leader>kk', '<CMD>Copilot<CR>', { noremap = true, desc = "Toggle Copilot", silent = true })
  end,

  config = function()

    vim.g.copilot_enabled = 1
    local copilot_on = true
    vim.api.nvim_create_user_command("CopilotToggle", function()
      if copilot_on then
        vim.cmd("Copilot disable")
        print("Copilot OFF")
      else
        vim.cmd("Copilot enable")
        print("Copilot ON")
      end
      copilot_on = not copilot_on
    end, { nargs = 0 })

    vim.keymap.set('n', '<leader>kk', '<CMD>CopilotToggle<CR>', { noremap = true, desc = "Toggle Copilot", silent = true })
  end,
}

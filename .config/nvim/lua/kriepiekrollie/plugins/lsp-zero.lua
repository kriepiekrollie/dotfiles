return {
    "VonHeikemen/lsp-zero.nvim",
    branch = 'v3.x',
    priority = 1,
    dependencies = {
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/nvim-cmp",
      "L3MON4D3/LuaSnip",
      "williamboman/mason.nvim",
    },
    config = function()
      local lsp_zero = require("lsp-zero")

      lsp_zero.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp_zero.default_keymaps({buffer = bufnr})
      end)

      local lspconfig = require("lspconfig")
      lspconfig.clangd.setup({})
      lspconfig.quick_lint_js.setup({})
      lspconfig.ruff.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.nil_ls.setup({})
      lspconfig.zls.setup({})

      local mason = require("mason")
      mason.setup()

      lspconfig.lua_ls.setup({
        on_init = function(client)
          local path = client.workspace_folders[1].name
          if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
            return
          end
          client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
              version = 'LuaJIT'
            },
            workspace = {
              checkThirdParty = false,
              -- library = {
              --   vim.env.VIMRUNTIME
              -- },
              -- pull in all of 'runtimepath'. NOTE: this is slow
              library = vim.api.nvim_get_runtime_file("", true)
            }
          })
        end,
        settings = {
          Lua = {}
        }
      })

    end,
}

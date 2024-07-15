return {
  "luukvbaal/statuscol.nvim",

  config = function()
    local builtin = require("statuscol.builtin")
    require("statuscol").setup({
      -- configuration goes here, for example:
      relculright = true,
      segments = {
        {
          text = { "%s" },
          click = "v:lua.ScFa",
        },
        {
          text = { builtin.foldfunc, " " },
          condition = { true, builtin.not_empty },
          click = "v:lua.ScFa",
        },
        {
          text = { builtin.lnumfunc, " " },
          condition = { true, builtin.not_empty },
          click = "v:lua.ScLa",
        },
        {
          sign = { name = { ".*" }, maxwidth = 2, colwidth = 1, auto = true, wrap = true },
          click = "v:lua.ScSa",
        },
      }
    })
  end,
}

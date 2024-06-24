return {
  "lervag/vimtex",
  init = function()
    -- Use init for configuration, don't use the more common "config".
    vim.g['vimtex_view_method'] = 'sioyek'     -- main variant with xdotool (requires X11; not compatible with wayland)
    -- vim.g['vimtex_view_method'] = 'zathura_simple' -- for variant without xdotool to avoid errors in wayland
    vim.g['vimtex_quickfix_mode'] = 0              -- suppress error reporting on save and build
    vim.g['vimtex_mappings_enabled'] = 1           -- Ignore mappings
    vim.g['vimtex_indent_enabled'] = 1             -- Auto Indent
    vim.g['tex_flavor'] = 'latex'                  -- how to read tex files
    vim.g['tex_indent_items'] = 1                  -- turn off enumerate indent
    vim.g['tex_indent_brace'] = 1                  -- turn off brace indent
    vim.g['vimtex_context_pdf_viewer'] = 'sioyek'  -- external PDF viewer run from vimtex menu command
    vim.g['vimtex_log_ignore'] = ({                -- Error suppression:
      'Underfull',
      'Overfull',
      'specifier changed to',
      'Token not allowed in a PDF string',
    })

    local map = vim.keymap.set
    map("n", "<leader>li", "<plug>(vimtex-info)", {
      noremap = true,
      desc = "Vimtex: Information.",
    })

    map("n", "<leader>lI", "<plug>(vimtex-info-full)", {
      noremap = true,
      desc = "Vimtex: Full information.",
    })

    map("n", "<leader>lt", "<plug>(vimtex-toc-open)", {
      noremap = true,
      desc = "Vimtex: Open table of contents.",
    })

    map("n", "<leader>lT", "<plug>(vimtex-toc-toggle)", {
      noremap = true,
      desc = "Vimtex: Toggle table of contents.",
    })

    map("n", "<leader>ly", "<plug>(vimtex-labels-open)", {
      noremap = true,
      desc = "Vimtex: Open Labels.",
    })

    map("n", "<leader>lY", "<plug>(vimtex-labels-toggle)", {
      noremap = true,
      desc = "Vimtex: Toggle Labels.",
    })

    map("n", "<leader>lv", "<plug>(vimtex-view)", {
      noremap = true,
      desc = "Vimtex: View PDF in document viewer.",
    })

    map("n", "<leader>lr", "<plug>(vimtex-reverse-search)", {
      noremap = true,
      desc = "Vimtex: Reverse Search for location in viewer.",
    })

    map("n", "<leader>ll", "<plug>(vimtex-compile)", {
      noremap = true,
      desc = "Vimtex: Toggle continuous compilation.",
    })

    map("n", "<leader>lK", "<plug>(vimtex-stop-all)", {
      noremap = true,
      desc = "Vimtex: Stop all compilation.",
    })

    map("n", "<leader>le", "<plug>(vimtex-errors)", {
      noremap = true,
      desc = "Vimtex: Show errors.",
    })

    map("n", "<leader>lo", "<plug>(vimtex-compile-output)", {
      noremap = true,
      desc = "Vimtex: Show compilation output.",
    })

    map("n", "<leader>lg", "<plug>(vimtex-status)", {
      noremap = true,
      desc = "Vimtex: Show status.",
    })

    map("n", "<leader>lG", "<plug>(vimtex-status-all)", {
      noremap = true,
      desc = "Vimtex: Show status all.",
    })

    map("n", "<leader>lc", "<plug>(vimtex-clean)", {
      noremap = true,
      desc = "Vimtex: Clean.",
    })

    map("n", "<leader>lC", "<plug>(vimtex-clean-full)", {
      noremap = true,
      desc = "Vimtex: Clean full.",
    })

    map("n", "<leader>lm", "<plug>(vimtex-imaps-list)", {
      noremap = true,
      desc = "Vimtex: Show list of insert mode mappings.",
    })

    map("n", "<leader>lx", "<plug>(vimtex-reload)", {
      noremap = true,
      desc = "Vimtex: Reload.",
    })

    map("n", "<leader>ls", "<plug>(vimtex-toggle-main)", {
      noremap = true,
      desc = "Vimtex: Toggle main.",
    })

  end,
}

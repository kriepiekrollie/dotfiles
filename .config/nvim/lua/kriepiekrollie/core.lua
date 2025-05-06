print("Welcome back ❤︎")

vim.opt.encoding = "utf-8"

vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cindent = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.opt.backspace = [[indent,eol,start]]

vim.opt.termguicolors = true
vim.opt.hidden = true

-- vim.opt.mouse = ""

vim.opt.colorcolumn = "80"

vim.opt.backup = true
vim.opt.backupext=".bak"
vim.opt.backupdir=vim.env.HOME .. "/.nvim_backups//"

-- vim.cmd('source ' .. vim.fn.stdpath("config") .. '/lua/kriepiekrollie/colors.vim')

vim.g.mapleader = ' '
local map = vim.keymap.set

map("n", "m", "<CMD>nohl<CR>", { noremap = true })

-- Alt+w closes a window
map({"n", "i", "v"}, "<M-w>", "<CMD>quit<CR>", { noremap = true })
-- Alt+{h,j,k,l} moves to window. (Handling this with vim-tmux plugin now)
-- map({"n", "i", "v"}, "<M-h>", "<CMD>wincmd 1 h<CR>", { noremap = true })
-- map({"n", "i", "v"}, "<M-j>", "<CMD>wincmd 1 j<CR>", { noremap = true })
-- map({"n", "i", "v"}, "<M-k>", "<CMD>wincmd 1 k<CR>", { noremap = true })
-- map({"n", "i", "v"}, "<M-l>", "<CMD>wincmd 1 l<CR>", { noremap = true })

-- Ctrl+Alt+{h,j,k,l} resizes window .
map({"n", "i", "v"}, "<C-M-h>", "<CMD>vertical resize -1<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-M-j>", "<CMD>horizontal resize -1<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-M-k>", "<CMD>horizontal resize +1<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-M-l>", "<CMD>vertical resize +1<CR>", { noremap = true })

-- Ctrl+Shift+{h,j,k,l} creates new split.
map({"n", "i", "v"}, "<C-S-h>", "<CMD>vertical topleft split<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-S-j>", "<CMD>belowright split<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-S-k>", "<CMD>topleft split<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-S-l>", "<CMD>vertical belowright split<CR>", { noremap = true })

-- Shift+Alt+{h,j,k,l} Move window to extremes
map({"n", "i", "v"}, "<S-M-h>", "<CMD>wincmd 1 H<CR>", { noremap = true })
map({"n", "i", "v"}, "<S-M-j>", "<CMD>wincmd 1 J<CR>", { noremap = true })
map({"n", "i", "v"}, "<S-M-k>", "<CMD>wincmd 1 K<CR>", { noremap = true })
map({"n", "i", "v"}, "<S-M-l>", "<CMD>wincmd 1 L<CR>", { noremap = true })

-- Ctrl+t creates new tab
map({"n", "i", "v"}, "<C-t>", "<CMD>tabnew<CR>", { noremap = true })

-- Alt+{0..9} moves to tab.
map({"n", "i", "v"}, "<M-1>", "<CMD>tabn 1<CR>", { noremap = true })
map({"n", "i", "v"}, "<M-2>", "<CMD>tabn 2<CR>", { noremap = true })
map({"n", "i", "v"}, "<M-3>", "<CMD>tabn 3<CR>", { noremap = true })
map({"n", "i", "v"}, "<M-4>", "<CMD>tabn 4<CR>", { noremap = true })
map({"n", "i", "v"}, "<M-5>", "<CMD>tabn 5<CR>", { noremap = true })
map({"n", "i", "v"}, "<M-6>", "<CMD>tabn 6<CR>", { noremap = true })
map({"n", "i", "v"}, "<M-7>", "<CMD>tabn 7<CR>", { noremap = true })
map({"n", "i", "v"}, "<M-8>", "<CMD>tabn 8<CR>", { noremap = true })
map({"n", "i", "v"}, "<M-9>", "<CMD>tabn 9<CR>", { noremap = true })
map({"n", "i", "v"}, "<M-0>", "<CMD>tabn 10<CR>", { noremap = true })

-- Ctrl+Alt+{0..9} closes tab
map({"n", "i", "v"}, "<C-M-1>", "<CMD>tabc 1<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-M-2>", "<CMD>tabc 2<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-M-3>", "<CMD>tabc 3<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-M-4>", "<CMD>tabc 4<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-M-5>", "<CMD>tabc 5<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-M-6>", "<CMD>tabc 6<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-M-7>", "<CMD>tabc 7<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-M-8>", "<CMD>tabc 8<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-M-9>", "<CMD>tabc 9<CR>", { noremap = true })
map({"n", "i", "v"}, "<C-M-0>", "<CMD>tabc 10<CR>", { noremap = true })

-- Shift+Alt+{0..9} moves tab
map({"n", "i", "v"}, "<S-M-1>", "<CMD>tabmov 1<CR>", { noremap = true })
map({"n", "i", "v"}, "<S-M-2>", "<CMD>tabmov 2<CR>", { noremap = true })
map({"n", "i", "v"}, "<S-M-3>", "<CMD>tabmov 3<CR>", { noremap = true })
map({"n", "i", "v"}, "<S-M-4>", "<CMD>tabmov 4<CR>", { noremap = true })
map({"n", "i", "v"}, "<S-M-5>", "<CMD>tabmov 5<CR>", { noremap = true })
map({"n", "i", "v"}, "<S-M-6>", "<CMD>tabmov 6<CR>", { noremap = true })
map({"n", "i", "v"}, "<S-M-7>", "<CMD>tabmov 7<CR>", { noremap = true })
map({"n", "i", "v"}, "<S-M-8>", "<CMD>tabmov 8<CR>", { noremap = true })
map({"n", "i", "v"}, "<S-M-9>", "<CMD>tabmov 9<CR>", { noremap = true })
map({"n", "i", "v"}, "<S-M-0>", "<CMD>tabmov 10<CR>", { noremap = true })

-- Alt+[] moves through buffers
map({"n", "i", "v"}, "<M-[>", "<CMD>bp<CR>", { noremap = true })
map({"n", "i", "v"}, "<M-]>", "<CMD>bn<CR>", { noremap = true })

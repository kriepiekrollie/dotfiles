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

vim.opt.mouse = ""

vim.opt.colorcolumn = "80"

vim.g.mapleader = ' '
local map = vim.keymap.set
map("n", "<C-t>", "<CMD>tabnew<CR>", { noremap = true })
map("n", "m", "<CMD>nohl<CR>", { noremap = true })

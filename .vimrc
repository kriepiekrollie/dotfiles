syntax on
set encoding=utf-8
set number
set relativenumber
set nowrap
set shiftwidth=4
set tabstop=4
set expandtab
set cindent
set cursorline
set termguicolors
set colorcolumn=80

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()

set noshowmode
set laststatus=2
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
colorscheme catppuccin_mocha

finish

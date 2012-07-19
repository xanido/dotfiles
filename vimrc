syntax on
let g:solarized_termcolors=16
set background=dark
set number
set nocompatible
set modelines=0
set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set showmode
set showcmd
set hidden
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

filetype indent plugin on

set textwidth=72
set formatoptions=qrn1
set colorcolumn=72

autocmd FileType gitcommit set fo+=t

nnoremap j gj
nnoremap k gk
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

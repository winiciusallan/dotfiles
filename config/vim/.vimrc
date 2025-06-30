" Vim dotfile configuration
" Winicius Allan @ UFCG

" General configs
set relativenumber
set ruler
syntax on
let mapleader=" "
set nowrap
set scrolloff=4
" let g:airline_theme='one'

" Indentation configs
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
colorscheme habamax

" Search configs
set hlsearch
hi Search ctermbg=226 ctermfg=black

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

augroup vimrcEx
  au!
  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=70
augroup END 

" Vim dotfile configuration
" Winicius Allan @ UFCG

" General configs
set number
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

" Search configs
set hlsearch
hi Search ctermbg=226 ctermfg=black

augroup vimrcEx
  au!
  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=70
augroup END 

set nocompatible
syntax on
filetype plugin indent on
set mouse=a
set number
set laststatus=2 ignorecase smartcase hlsearch incsearch

set hidden " enable usage of hidden buffer

" show existing tab with 4 spaces width
set tabstop=4
" soft tab width
set softtabstop=4
set shiftwidth=4
" 4 spaces tab
set expandtab

autocmd BufNewFile,BufRead *.ezt set filetype=html

" indentation made from visual mode
set smartindent

"Editor config
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"Invisible character colors 
highlight NonText guifg=#054e5f
highlight SpecialKey guifg=#054e5f

"Plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'stanangeloff/php.vim'
Plug 'rayburgemeestre/phpfolding.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'altercation/vim-colors-solarized'
call plug#end()

"Plugin configuration
set background=dark
colorscheme solarized
call togglebg#map("<F5>")


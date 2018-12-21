set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'itchyny/lightline.vim'

Plugin 'tpope/vim-surround'

Plugin 'scrooloose/nerdtree'

Plugin 'w0rp/ale'

Plugin 'romainl/Apprentice'

Plugin 'Raimondi/delimitMate'

Plugin 'tpope/vim-fugitive'

Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " requiredsyntax enable

set nu rnu
syntax on
silent! colorscheme apprentice

let mapleader = " "
map <leader>s :source ~/.vimrc<CR>
map <C-o> :NERDTreeToggle<CR>

let g:flake8_show_in_file=1

let delimitMate_expand_cr = 1

" Let's make it easier to work with splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

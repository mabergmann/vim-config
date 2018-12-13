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

Plugin 'morhetz/gruvbox'

Plugin 'itchyny/lightline.vim'

Plugin 'tpope/vim-surround'

Plugin 'scrooloose/nerdtree'

Plugin 'w0rp/ale'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " requiredsyntax enable

set nu rnu
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

let mapleader = " "
map <leader>s :source ~/.vimrc<CR>
map <C-o> :NERDTreeToggle<CR>
" Inserts {[( in pairs


inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {

inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (

inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [

inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>":"\"\"\<Left>"
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"

let g:flake8_show_in_file=1

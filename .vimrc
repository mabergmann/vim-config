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

Plugin 'romainl/Apprentice'

Plugin 'Raimondi/delimitMate'

Plugin 'scrooloose/nerdcommenter'

Plugin 'tpope/vim-repeat'

Plugin 'godlygeek/tabular'

Plugin 'wellle/targets.vim'

Plugin 'maxbrunsfeld/vim-yankstack'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'sheerun/vim-polyglot'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " requiredsyntax enable

set nu rnu
syntax on
silent! colorscheme apprentice

let mapleader = " "
map <leader>s :source ~/.vimrc<CR>

" Yankstack config
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

let g:flake8_show_in_file=1

let delimitMate_expand_cr = 1

" Let's make it easier to work with splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
    nmap <Leader>a, :Tabularize /,\zs<CR>
    vmap <Leader>a, :Tabularize /,\zs<CR>
    noremap <silent> <leader>t: :Tabularize /:<CR>
noremap <silent> <leader>t= :Tabularize /=<CR>
noremap <silent> <leader>t, :Tabularize /,<CR>
noremap <silent> <leader>t{ :Tabularize /{<CR>
noremap <silent> <leader>t" :Tabularize /"<CR>
noremap <silent> <leader>t' :Tabularize /'<CR>
noremap <silent> <leader>t[ :Tabularize /[<CR>
noremap <silent> <leader>t/ :Tabularize ///<CR>
noremap <silent> <leader>t\| :Tabularize /\|<CR>
endif

set splitbelow
set splitright

nmap <leader>P <M-P>
nmap <leader>p <M-p>

" custom text-object for numerical values
function! Numbers()
    call search('\d\([^0-9\.]\|$\)', 'cW')
    normal v
    call search('\(^\|[^0-9\.]\d\)', 'becW')
endfunction
xnoremap in :<C-u>call Numbers()<CR>
onoremap in :normal vin<CR>

let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']



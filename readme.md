# My vim configuration

This is my vim configuration. It's been developed according to my needs. Feel free to use it or improve it.

## Bascic configurations

### Shortcuts
- Space is maped as leader key.
- \<space\>s reloads the configuration file.
- \<C-o\> shows / hides NerdTree
- \<C-{h,j,k,l}\> to move between splits
### Plugins

This configuration uses [vundle](https://github.com/VundleVim/Vundle.vim) as package manager and includes the following plugins:
- [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
- [lightline](https://github.com/itchyny/lightline.vim)
- [vim-surround](https://github.com/tpope/vim-surround)
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [ale](https://github.com/w0rp/ale)
- [delimitMate](https://github.com/Raimondi/delimitMate)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [editorconfig](https://github.com/editorconfig/editorconfig-vim)
- [NERDcommenter](https://github.com/scrooloose/nerdcommenter)
- [vim-repeat](https://github.com/tpope/vim-repeat)
- [tabular](https://github.com/godlygeek/tabular)
- [targets](https://github.com/wellle/targets.vim)
- [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack)
- [vim-easymotion](https://github.com/easymotion/vim-easymotion)
- [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)
- [tlib\_vim](https://github.com/tomtom/tlib_vim)
- [vim-snipmate](https://github.com/garbas/vim-snipmate)
- [vim-polyglot](https://github.com/sheerun/vim-polyglot)

The default theme is [Apprentice](https://github.com/romainl/Apprentice)

## Installation Guide

### Requisits
- Git
- Clang compiler
- Flake 8
- CMake

### Arch Linux
	sudo pacman -S git clang cmake
	yay -S flake8

### Cloning and running installation script
	git clone --recurse-submodules https://github.com/mabergmann/vim-config ~/.vim
	chmod +x ~/.vim/install.sh
	~/.vim/install.sh # This might take a while

# My vim configuration

This is my vim configuration. It's been developed according to my needs. Feel free to use it or improve it.

## Bascic configurations

### Shortcuts
- Space is maped as leader key.
- \<space\>s reloads the configuration file.
- \<C-o\> shows / hides NerdTree

We want to type as few as possible, so vim automatically adds pairs for \{, \( and \[

### Plugins

This configuration uses [vundle](https://github.com/VundleVim/Vundle.vim) as package manager and includes the following plugins:
- [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
- [lightline](https://github.com/itchyny/lightline.vim)
- [vim-surround](https://github.com/tpope/vim-surround)
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [ale](https://github.com/w0rp/ale)

The default theme is [gruvbox](https://github.com/morhetz/gruvbox)

## Installation Guide

### Requisits
- Git
- Clang compiler
- Flake 8

### Arch Linux
	sudo pacman -S git clang 
	yay -S flake8

### Cloning and running installation script
	git clone https://github.com/mabergmann/vim-config ~/.vim
	chmod +x ~/.vim/install.sh
	~/.vim/install.sh

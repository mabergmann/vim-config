ln ~/.vim/.vimrc ~/.vimrc
mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
if command -v python3 &>/dev/null; then
	python3 ~/.vim/bundle/YouCompleteMe/install.py --clang-completer
else
	python ~/.vim/bundle/YouCompleteMe/install.py --clang-completer
fi

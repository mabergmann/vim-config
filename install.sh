ln ~/.vim/.vimrc ~/.vimrc
ln ~/.vim/.editorconfig ~/.editorconfig
vim +PluginInstall +qall
if command -v python3 &>/dev/null; then
	python3 ~/.vim/bundle/YouCompleteMe/install.py --clang-completer
else
	python ~/.vim/bundle/YouCompleteMe/install.py --clang-completer
fi

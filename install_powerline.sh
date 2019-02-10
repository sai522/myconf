sudo apt-get install powerline fonts-powerline


mkdir -p ~/.local/share/fonts

cd ~/.local/share/fonts

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf

fc-cache -vf ~/.local/share/fonts/


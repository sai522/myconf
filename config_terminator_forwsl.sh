sudo apt-get install nodejs-legacy  
sudo npm install --global base16-builder  
mkdir -p ~/.config/terminator  
base16-builder -s solarized -t terminator -b dark > ~/.config/terminator/config  

# naistro-player-box-dist

Distribution files for naistro player box
install all apks from this url - http://bit.ly/4mPKV2t (this installs termux etc)

open termux and run the following commands
pkg update
pkg upgrade
pkg install python git mpv
git clone https://github.com/naistro/naistro-player-box-dist
cd naistro-player-box-dist
chmod +x ./setup.sh
setup.sh
chmod +x ./install_boot.sh
install_boot.sh
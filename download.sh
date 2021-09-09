#!/bin/bash

apt update
apt upgrade

################################################################
########################## basic utils #########################
apt install git # version control
apt install tmux # terminal control
apt install xclip # cli tool for copy to clipboard

################################################################
########################## editors #############################
# vim,neovim
apt install vim neovim
# vim plug for linux nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt-get update
apt-get install sublime-text


################################################################
##################### terminal emulators #######################
apt install konsole terminator guake

################################################################
############################ browsers ##########################
## brave
apt install apt-transport-https curl
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser

## chrome
## download that with gui from firefox
## then run dpkg -i file_name_for_chrome_download

################################################################
########################### pdf viewer #########################
apt install zathura

################################################################
########################### screenshot #########################
apt install flameshot

################################################################
##################### download from brwoser ####################
# vscode, chrome, teams
# then run dpkg -i file_name to install

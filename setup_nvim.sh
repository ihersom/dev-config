#!/bin/bash

cd ~
wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract

git clone https://github.com/ihersom/nvim-config.git
mkdir -p ~/.config/nvim/; cp -dr nvim-config/* ~/.config/nvim

# Now startup neovim anywhere using the "nvim" command, and it will start to install plugins defined by the init.lua config
# 	- you might experience some problems installing plugins using :Mason from within nvim if python3-virtualenv or python3-venv are not installed
#	- will need to install lazygit to use the :LazyGit nvim plugin
#		- Ubuntu 
#			>> apt install lazygit
#		- RHEL/RockyLinux/CentOS 
#			>> sudo dnf copr enable atim/lazygit -y
#			>> sudo dnf install lazygit

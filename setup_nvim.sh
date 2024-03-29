#!/bin/bash

#Script Assumes you are running from inside nvim-config repo (git clone https://github.com/ihersom/nvim-config.git)

#To Get Neovim on any system you can do the following
# wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
# chmod u+x nvim.appimage
# ./nvim.appimage --appimage-extract
# sudo ln -s ~/squashfs-root/usr/bin/nvim /usr/bin/nvim

#Install nvim system wide
pushd ~

#Copy Config Over
mkdir -p ~/.config/nvim/

popd #pop back to the nvim-config directory we should have started from if the script was indeed run from that directory
cp -dr * ~/.config/nvim

#Install lazygit so neovim plugin can work
#LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
#curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
#tar xf lazygit.tar.gz lazygit
#sudo install lazygit /usr/local/bin


# 3rd party pacakges required for this setup's nvim plugins:
#   lazygit - 
#   lazydocker - https://github.com/jesseduffield/lazydocker#installation , https://github.com/jesseduffield/lazydocker/releases - AUR git clone https://aur.archlinux.org/lazydocker.git
#   bottom - https://github.com/ClementTsang/bottom
#   ripgrep - 
#   fd-find/fd - 
# 
# Now startup neovim anywhere using the "nvim" command, and it will start to install plugins defined by the init.lua config
# 	- you might experience some problems installing plugins using :Mason from within nvim if python3-virtualenv or python3-venv, npm, and nodejs are not installed
#	- will need to install lazygit to use the :LazyGit nvim plugin - https://github.com/jesseduffield/lazygit#installation
#     - will need to install ripgrep and fd-find in order to use the telescope grep_string functionality
#   - Ubuntu
#     >> sudo apt install libfuse-dev npm nodejs ripgrep fd-find
#   - RHEL/RockyLinux/CentOS 
#     >> sudo dnf copr enable atim/lazygit -y
#     >> sudo dnf install lazygit

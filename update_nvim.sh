#!/bin/bash -e

check_os() {
    os_type=$(uname)
    if [ "$os_type" == "Linux" ]; then
        echo "Linux"
    elif [ "$os_type" == "Darwin" ]; then
        echo "Mac"
    else
        echo "Unknown"
    fi
}

#git pull
OS=$(check_os)
if [ "$OS" == "Linux" ]; then
    cp -dr * ~/.config/nvim
else
    cp -R * ~/.config/nvim
fi

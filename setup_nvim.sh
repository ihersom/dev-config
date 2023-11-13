#!/bin/bash

git clone git@github.com:ihersom/nvim-config.git
mkdir -p ~/.config/nvim/; cp -dr nvim-config/* ~/.config/nvim

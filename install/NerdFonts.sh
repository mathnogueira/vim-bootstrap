#!/bin/bash

vimPath=$1
currentPath=`pwd`

echo "Executing Tern_for_vim installation script"
cd $vimPath/bundle/

git clone https://github.com/ryanoasis/nerd-fonts.git --depth 1
cd nerd-fonts
./install.sh

cd $currentPath

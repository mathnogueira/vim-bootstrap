#!/bin/bash

vimPath=$1
currentPath=`pwd`

echo "Executing YouCompleteMe installation script"
cd $vimPath/bundle/YouCompleteMe

git submodule update --init --recursive
./install.py --all

cd $currentPath

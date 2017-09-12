#!/bin/bash

vimPath=$1
currentPath=`pwd`

echo "Executing Tern_for_vim installation script"
cd $vimPath/bundle/tern_for_vim

npm install

cd $currentPath

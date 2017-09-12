#!/bin/bash
thisPath=`pwd`
packages=packages.txt
vimdir=~/.vim
packagesPath=`pwd`/$packages


# Create vim folder
echo "(1/4) Creating folder structure..."
mkdir -p "$vimdir"
mkdir -p "$vimdir/bundle"
mkdir -p "$vimdir/autoload"
mkdir -p "$vimdir/colors"

echo "(2/4) Installing pathogen.vim..."
curl -LSso $vimdir/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "(3/5) Installing YouCompleteMe"
cd $vimdir/bundle
git clone -q https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py

echo "(4/5) Installing packages..."
cd $vimdir/bundle
while IFS= read -r package
do
    echo cloning "$package"
    git clone -q $package
done < "$packagesPath"

echo "(5/5) Copying .vimrc to $HOME..."
cd $thisPath
cp .vimrc ~/

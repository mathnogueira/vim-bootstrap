#!/bin/bash
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

echo "(3/4) Installing packages..."
cd $vimdir/bundle
while IFS= read -r package
do
    echo cloning "$package"
    git clone -q $package
done < "$packagesPath"

echo "(4/4) Copying .vimrc to $HOME..."
cp .vimrc ~/

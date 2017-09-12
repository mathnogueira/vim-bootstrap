#!/bin/bash

function download_vim_packages () {
    packages=`pwd`/$1
    currentPath=`pwd`
    cd $2/bundle
    while IFS= read -r package
    do
        echo cloning "$package"
        git clone -q $package
    done < "$packages"

    cd $currentPath
}

function download_pathgen () {
    vimDir=$1
    curl -LSso $vimdir/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

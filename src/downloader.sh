#!/bin/bash

source src/depman.sh

function download_vim_packages () {
    packages=`pwd`/$1
    cpwd=$(pwd)

    depman_init

    cd $2/bundle
    while IFS= read -r package
    do
        echo cloning "$package"
        git clone -q $package
        depman_install $package $cpwd
    done < "$packages"

    cd $cpwd
}

function download_pathgen () {
    vimDir=$1
    curl -LSso $vimdir/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

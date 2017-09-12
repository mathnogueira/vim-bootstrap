#!/bin/bash

# Create the vim folder structure
#
# @param base base directory (usually your ~/.vim folder)
function create_vim_structure () {
    vimdir=$1
    mkdir -p "$vimdir"
    mkdir -p "$vimdir/bundle"
    mkdir -p "$vimdir/autoload"
    mkdir -p "$vimdir/colors"
}

function clear_vim_structure () {
    vimdir=$1
    rm -rf $vimdir
    rm -f ~/.vimrc
}

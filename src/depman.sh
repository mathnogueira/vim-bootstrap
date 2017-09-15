#!/bin/bash

depmanPath=depman/depman.py

function depman_install () {
    echo "Initializing depman"
    depmanSource=$2/src/depman/depman.py
    currentPath=`pwd`

    python $depmanSource install $1 $2

    cd $currentPath
}

function depman_list () {
    python $depmanPath list $2
}

function depman_init () {
    mkdir -p .depman
}

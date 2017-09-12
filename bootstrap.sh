#!/bin/bash

# Souce code imports
source src/structure.sh
source src/downloader.sh
source src/installer.sh

source src/logger.sh

# About the environment
vimBasePath=~/.vim
packageList=packages.txt

# Tasks that are executed by this script
tasks=(
    ""  # A small little hack
    "Cleaning VIM directory structure"
    "Creating VIM directory structure"
    "Installing Pathgen"
    "Installing VIM Packages"
    "Executing packages install scripts"
    "Copying .vimrc to HOME"
)

# Exectution

set_log_tasks $tasks

log_task
clear_vim_structure $vimBasePath

log_task
create_vim_structure $vimBasePath

log_task
download_pathgen $vimBasePath

log_task
download_vim_packages $packageList $vimBasePath 

log_task
execute_package_install_scripts $vimBasePath

log_task
cp .vimrc ~/

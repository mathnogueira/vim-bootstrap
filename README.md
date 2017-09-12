# VIM Bootstrap

A set of bash scripts that automate the process of downloading and configuring your VIM
environment.

## Project structure

```
|--- vim-bootstrap
|     |--- config
|     |     | .vimrc
|     |     | packages.txt
|     |--- install
|     |--- src
|     | .vimrc
|     | bootstrap.sh
|     | packages.txt
```

### Config directory
In this directory is located your VIM configuration. It includes the `.vimrc` file and a text file containing all packages that must be downloaded in order to make your environment work.
This file has git repository links that will be cloned, each repository must be separated by a line break.

A package.txt example would be as follow:

```
https://github.com/scrooloose/nerdtree.git
git://github.com/airblade/vim-gitgutter.git
https://github.com/jistr/vim-nerdtree-tabs.git
```

### Install directory
Some plugins require extra steps besides the repository clone in order to them to work. Those steps are executed after the repository clone stage. If you want to install a public that needs extra steps, you must create a shell script inside the `install` directory. All files inside of it are executed automatically by the bootstrap script right after all plugin repositories are cloned.

### Src directory
It the source code of the modules used by the bootstrap script.

## Execution steps

1) Clean your local VIM configuration (~/.vim/ and ~/.vimrc)
2) Creation of the VIM structure (~/.vim and its subdirectories)
3) Installation of Pathogen
4) Clone of each repository at `config/packages.txt`
5) Execution of each script found at `install/`
6) Copy of `config/.vimrc` to your home directory
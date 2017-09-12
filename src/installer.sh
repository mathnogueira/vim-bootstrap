#!/bash/bin

function execute_package_install_scripts () {
    vimPath=$1
    currentPath=`pwd`

    for file in `ls install/`; do
        . install/$file $vimPath
    done

    cd $currentPath
}
 

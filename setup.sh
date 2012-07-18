#!/bin/bash

symlink="$HOME/.vimrc"
vimuseonly="$HOME/.vim"
undo="$vimuseonly/.vimundo"
tmp="$vimuseonly/.vimswap"
backup="$vimuseonly/.vimbackup"
view="$vimuseonly/.vimviews"

workdone=false

echo ' '

if [[ -f "$symlink" && ! -L "$symlink" ]]; then
    echo "$symlink is a file. Removing..."
    rm $HOME/.vimrc
fi

if [ -f "$vimuseonly/vim.dirs" ]; then
    rm $vimuseonly/vim.dirs
    cp $vimuseonly/default.dirs $vimuseonly/vim.dirs
fi

if [ -h "$symlink" ]; then
    echo "Symlink exists"

	linklocation=$(readlink "$symlink")

    if [ $linklocation != "$HOME/.vim/.vimrc" ]; then
        echo "Symlink points to incorrect location. Removing..."
        rm $HOME/.vimrc
        workdone=true
    fi
else
    echo "Creating symlink $HOME/.vimrc"
    ln -s $HOME/.vim/.vimrc $HOME/.vimrc
    workdone=true
fi

if [ ! -d "$undo" ]; then
    echo "creating undo directory $undo"
    mkdir -p "$undo"
    workdone=true
fi

if [ ! -d "$tmp" ]; then
    echo "creating tmp directory $tmp"
    mkdir -p "$tmp"
    workdone=true
fi

if [ ! -d "$backup" ]; then
    echo "creating backup directory $backup"
    mkdir -p "$backup"
    workdone=true
fi

if [ ! -d "$view" ]; then
    echo "creating backup directory $view"
    mkdir -p "$view"
    workdone=true
fi

if [ workdone ]; then
    echo 'All necessary links and directories exist.'
    echo 'Nothing left to do. Setup Complete!'
    echo ' '
else
    echo 'Needed symlinks and directories exist.'
    echo 'Nothing left to do. Setup Complete!'
    echo ' '
fi

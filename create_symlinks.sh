#!/bin/bash

function create_symbolic_links() {
    local home=$HOME

    dot_files_dir="/mnt/chromeos/removable/X/dev

    # Create symbolic link for .zshrc
    ln -sf "$dot_files_dir/.zshrc" "$HOME/.zshrc"

}

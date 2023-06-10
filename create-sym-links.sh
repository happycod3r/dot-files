#!/bin/bash

# ~/.bashrc bpytop.conf .gitconfig nanorc .p10k.zsh .profile .sommelierrc .taskrc .z .zdirs .zshenv .zshrc
# ~/.config/znt/n-aliases, n-cd, n-env, n-functions, n-history, n-kill, n-list, n-options, n-panelize.conf
# ~/.config/neofetch/config.conf
# ~/.rustup/settings.toml
# ~/.cargo/env
# /etc/zsh/newuser.zshrc.recommended zlogin zlogout zprofile zshenv zshrc

function create_symbolic_links() {
    function fatal() {
        CYAN='\033[0;36m'
        RED='\033[0;31m'
        NC='\033[0m'
        echo -e "${CYAN}[parcel]$0: ${RED}fatal error:${CYAN} $@ \nYou have to specify which links to create. Usage: \ncreate-symbolic-links [linux|vscode|sublime]" >&2
        exit 0
    }

    function error-out {
        echo -e "$@"
        sleep 1
    }
    
    local home dot_files_dir

    root="/"
    etc="${root}etc"
    home="$HOME"
    dotconf="${home}/.config"

    
    dot_files_dir="/home/happycod3r/X/backups/linux/.dot-files"
    
    #(/etc/nanorc)
    #sudo ln -sf "${dot_files_dir}/nanorc" "${etc}/nanorc"
    
    #(~/.bashrc)
    #sudo ln -sf "${dot_files_dir}/.bashrc" "${home}/.bashrc"
    
    #(~/.gitconfig)
    #sudo ln -sf "${dot_files_dir}/.gitconfig" "${home}/.gitconfig"
    
    #(~/.p10k.zsh)
    #sudo ln -sf "${dot_files_dir}/.p10k.zsh" "${home}/.p10k.zsh"
    
    #(~/.profile)
    #sudo ln -sf "${dot_files_dir}/.profile" "${home}/.profile"
    
    #(~/.sommelierrc)
    #sudo ln -sf "${dot_files_dir}/.sommelierrc" "${home}/.sommelierrc"
    
    #(~/.taskrc)
    #sudo ln -sf "${dot_files_dir}/.taskrc" "${home}/.taskrc"
    
    #(~/.z)
    #sudo ln -sf "${dot_files_dir}/.z" "${home}/.z"
    
    #(~/.zdirs)
    #sudo ln -sf "${dot_files_dir}/.zdirs" "${home}/.zdirs"
    
    #(~/.zshenv)
    #sudo ln -sf "${dot_files_dir}/.zshenv" "${home}/.zshenv"

    #(~/.zshrc)
    # sudo ln -sf "${dot_files_dir}/.zshrc" "${home}/.zshrc"
    
    #-------------

    #(~/.rustup/settings.toml)
    #ln -sf "${dot_files_dir}/.rustup/settings.toml" "${home}/.rustup/settings.toml"
    
    #(.cargo/env)
    #ln -sf "${dot_files_dir}/.cargo/env" "${home}/.cargo/env"

    #(~/.config/neofetch/config.conf)
    #ln -sf "${dot_files_dir}/neofetch/config.conf" "${dotconf}/neofetch/config.conf"
    
    #(~/.config/bpytop/bpytop.conf)
    #ln -sf "${dot_files_dir}/bpytop.conf" "${dotconf}/bpytop/bpytop.conf"
    
    #(~/.task/*.data)
    #task_files=(backlog completed pending undo)
    #for task_file in "${task_files[@]}"; do
    #    ln -sf "${dot_files_dir}/.task/${task_file}.data" "${home}/.task/${task_file}.data"
    #done

    #(~/.config/*.conf)
    # znt_files=(n-aliases n-cd n-env n-functions n-history n-kill n-list n-options n-panelize) 
    # for znt_file in "${znt_files[@]}"; do
    #     ln -sf "${dot_files_dir}/znt/${znt_file}.conf" "${dotconf}/znt/${znt_file}.conf"
    # done
    
    #(/etc/zsh/*)
    # zsh_files=(zshrc zshenv zlogin zlogout zprofile newuser.zshrc.recommended)
    # for zsh_file in "${zsh_files[@]}"; do
    #     sudo ln -sf "${dot_files_dir}/zsh/${zsh_file}" "${etc}/zsh/${zsh_file}"
    # done
    
}

create_symbolic_links 

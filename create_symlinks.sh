#!/bin/bash

# ~/.bashrc bpytop.conf .gitconfig nanorc .p10k.zsh .profile .sommelierrc .taskrc .z .zdirs .zshenv .zshrc
# ~/.config/znt/n-aliases, n-cd, n-env, n-functions, n-history, n-kill, n-list, n-options, n-panelize.conf
# ~/.config/neofetch/config.conf
# ~/.rustup/settings.toml
# ~/.cargo/env
# /etc/zsh/newuser.zshrc.recommended zlogin zlogout zprofile zshenv zshrc

function create_symbolic_links() {
    
    local home dot_files_dir

    root="/"
    etc="${root}etc"
    home="$HOME"
    dotconf="${home}/.config"
    
    dot_files_dir="${root}mnt/chromeos/removable/X/backups/linux/.dot-files"
    
    #(/etc/nanorc)
    sudo ln -sf "${dot_files_dir}/nanorc" "${etc}/nanorc"
    
    #(~/.bashrc)
    ln -sf "${dot_files_dir}/.bashrc" "${home}/.bashrc"
    
    #(~/.gitconfig)
    ln -sf "${dot_files_dir}/.gitconfig" "${home}/.gitconfig"
    
    #(~/.p10k.zsh)
    ln -sf "${dot_files_dir}/.p10k.zsh" "${home}/.p10k.zsh"
    
    #(~/.profile)
    ln -sf "${dot_files_dir}/.profile" "${home}/.profile"
    
    #(~/.sommelierrc)
    ln -sf "${dot_files_dir}/.sommelierrc" "${home}/.sommelierrc"
    
    #(~/.taskrc)
    ln -sf "${dot_files_dir}/.taskrc" "${home}/.taskrc"
    
    #(~/.z)
    ln -sf "${dot_files_dir}/.z" "${home}/.z"
    
    #(~/.zdirs)
    ln -sf "${dot_files_dir}/.zdirs" "${home}/.zdirs"
    
    #(~/.zshenv)
    ln -sf "${dot_files_dir}/.zshenv" "${home}/.zshenv"

    #(~/.zshrc)
    ln -sf "${dot_files_dir}/.zshrc" "${home}/.zshrc"
    
    #(~/.rustup/settings.toml)
    ln -sf "${dot_files_dir}/.rustup/settings.toml" "${home}/.rustup/settings.toml"
    
    #(.cargo/env)
    ln -sf "${dot_files_dir}/.cargo/env" "${home}/.cargo/env"

    #(~/.config/neofetch/config.conf)
    ln -sf "${dot_files_dir}/neofetch/config.conf" "${dotconf}/neofetch/config.conf"
    
    #(~/.config/bpytop/bpytop.conf)
    ln -sf "${dot_files_dir}/bpytop.conf" "${dotconf}/bpytop/bpytop.conf"
    
    #(~/.task/*.data)
    task_files=(backlog completed pending undo)
    for task_file in "${task_files[@]}"; do
        ln -sf "${dot_files_dir}/.task/${task_file}.data" "${home}/.task/${task_file}.data"
    done

    #(~/.config/*.conf)
    znt_files=(n-aliases n-cd n-env n-functions n-history n-kill n-list n-options n-panelize) 
    for znt_file in "${znt_files[@]}"; do
        ln -sf "${dot_files_dir}/znt/${znt_file}.conf" "${dotconf}/znt/${znt_file}.conf"
    done
    
    #(/etc/zsh/*)
    zsh_files=(zshrc zshenv zlogin zlogout zprofile newuser.zshrc.recommended)
    for zsh_file in "${zsh_files[@]}"; do
        sudo ln -sf "${dot_files_dir}/zsh/${zsh_file}" "${etc}/zsh/${zsh_file}"
    done
}

create_symbolic_links 

# ~/.bashrc: executed by bash(1) for non-login shells.

#////// * INTERACTIVITY CHECK * //////
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac
#//////

#////// * HISTORY * //////
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
#//////

#////// * WINDOW SIZE CHECK * //////
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
#//////

#////// * EXPANSION CHARACTER * //////
# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar
#//////

#////// * NON_TEXT INPUT FRIENDLINESS * //////
# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
#//////

#////// * CHROOT IDENTITY * //////
# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
#//////

#////// * FANCY PROMPT * //////
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
#//////

#////// * ENABLE/DISABLE COLORED PROMPT * //////
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
#//////

#////// * XTERM * //////
# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac
#//////

#////// * ENABLE/DISABLE LS COLOR SUPPORT + ALIASES * //////
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi
#//////

#////// * COLORED GCC WARNINGS & ERRORS * //////
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
#//////

#////// * ALIAS DEFINITIONS * //////
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
#//////

#////// * ENABLE/DISABLE COMPLETION FEATURES * //////
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
#//////

#////// * PATH * //////
#Custom $PATH directories:
export PATH="/usr/local/bin:$PATH"
export PATH="/user/local/sbin:$PATH"
export PATH="/usr/local/games:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/bin:$PATH"
export PATH="/sbin:$PATH"
export PATH="/mnt/chromeos/removable/X/dev/projects/bash/xbin:$PATH"
export PATH="/mnt/chromeos/removable/X/dev/projects/bash/scripts:$PATH"
export PATH="/mnt/chromeos/removable/X/dev/projects/py/shell_scripts:$PATH"
export PATH="/mnt/chromeos/removable/X/dev/projects/java:$PATH"
export PATH="/mnt/chromeos/removable/X/dev/java/java-jdk.1.8.0x86-64/bin:$PATH"
export PATH="/mnt/chromeos/removable/X/dev/java/java-jre.1.8.0x86-64/bin:$PATH"
export PATH="/mnt/chromeos/removable/DEV:$PATH"
export PATH="/mnt/chromeos/MyFiles:$PATH" #Unused.
export PATH="/mnt/chromeos/GoogleDrive:$PATH" #Unused.
export PATH="/home/happycod3r/node_modules:$PATH"
#//////

# .bashrc

#Default editor
export EDITOR="vim"

#Default Terminal
export TERMINAL="alacritty"

#Append multiple history
export PROMPT_COMMAND='history -a'

#If not running interactively, don't do anything
[ -z "$PS1" ] && return

#Don't put duplicate lines in the history. See bash(1) for more options
#... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

#Append to the history file, don't overwrite it
shopt -s histappend

#For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

#Stop terminal suspend
stty -ixon

#Add .dotfiles path for executables
export PATH=$PATH:$HOME/.dotfiles/.bin:$HOME/bin/Sencha/Cmd

#Colors
export TERM=xterm-256color

#Add aliases
source $HOME/.bash_aliases

#Allow git branch autocompletion
source $HOME/.dotfiles/.scripts/git-completion.sh

#Source AWS env
if [ -f $HOME/.aws.env ]; then
   source $HOME/.aws.env
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#Terminal Prompt
export PS1="\[\033[38;5;32m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;13m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;148m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;202m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

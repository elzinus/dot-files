########################################
#  ____    _    ____  _   _ ____   ____
# | __ )  / \  / ___|| | | |  _ \ / ___|
# |  _ \ / _ \ \___ \| |_| | |_) | |
# | |_) / ___ \ ___) |  _  |  _ <| |___
# |____/_/   \_\____/|_| |_|_| \_\\____|
#
# Elzinus van der Kleij
########################################


########################################
# Set up config for .dot files
# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=/home/jan/.cfg/ --work-tree=/home/jan'

# ALIASSES
alias p3="python3"

# todotxt-cli
alias t="todo-txt -tN"
alias ta="todo-txt -tN a"
alias tl="todo-txt -tN ls"
alias td="todo-txt -Na do"
alias tdr="taskrepeat"
alias tlp="todo-txt -tN lsp"
alias tpv="todo-txt projectview"

alias vimt="vim ~/Dropbox/todo/todo.txt"
alias vims="vim ~/Dropbox/todo/someday.txt"
alias vimz="cd ~/Dropbox/zimNotebook/ && vim ~/Dropbox/zimNotebook/00._INBOX.txt"

alias taInbox="todo-txt -tN addto inbox.txt"
alias tlInbox="todo-txt -tN lf inbox"

alias tp="taskprio"
taskprio(){
    todo-txt p $1 $2
}

alias tlP="taskTop"
taskTop(){
    todo-txt -tN ls "([A|B|C])"
}

taskrepeat(){
    todo-txt -a repeat $1 1
}

########## TASKWARRIOR ##################
#    alias ta="task add"
#    alias tl="task"
#
#taskdone(){
#    task $1 done
#}
#    alias td="taskdone"
#
#taskprojectlist(){
#    task project:$1
#}
#    alias tp="taskprojectlist"
#
#taskdepend(){
#    task $1 modify depend:$2
#}
#    alias tdep="taskdepend"
#
#taskmodify(){
#    task $1 modify $2
#}
#   alias tm="taskmodify"
#
#
#taskannotate(){
#    task $1 annotate $2
#}
#   alias tann="taskannotate"

# ZIM
alias vimz="cdz && vim ~/Dropbox/zimNotebook/00._INBOX.txt"
alias cdz="cd ~/Dropbox/zimNotebook/"
alias rangerz="ranger ~/Dropbox/zimNotebook/"

alias cdd="cd ~/Desktop/"
alias taskzim="task | cat >> ~/Dropbox/zimNotebook/00._INBOX.txt"


# echo to ...
#   commands cheatcheat
echocommand(){
    echo $1 >> ~/command.md
}

# Find and less

findcat(){
    find . -iname *$1* -exec cat {} +
}
alias findcat="findcat"



########################################
# ORIGINAL BASHRC FILE

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

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

# Use PS1 below to change the prompt \
    # force_color_prompt should be 'yes'
if [ "$color_prompt" = yes ]; then
    #ORGINAL PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
    # ONLY folder in green with new line spacing
    # See http://bashrcgenerator.com/ for help
    PS1="\n\[$(tput sgr0)\]\[\033[38;5;2m\]▶ \[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;2m\]\W\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;1m\]\\$\[$(tput sgr0)\] "
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \W\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

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


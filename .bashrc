alias sudo='sudo -E '
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias grep='grep --color=always'
alias less='less -R'
alias lv='echo $SHLVL'
alias ll='ls -l'
alias ssh='ssh -tt'
alias matlab="/usr0/local/MATLAB/R2015a/bin/matlab -nodesktop -softwareopengl"

### Path ###
PATH=${HOME}/.local/bin:$PATH
export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}

PYTHONPATH=$PYTHONPATH:$HOME/.local/lib/python2.7/site-packages
export PYTHONPATH

export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

CUDA_HOME=/usr/local/cuda
export CUDA_HOME

### Terminal ###
export TERM="xterm-256color"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# PS1
export PS1="\n\[\e[01;36m\]\u@\h:\[\e[0m\]\[\e[0m\]\[\e[01;31m\]\w\[\e[0m\]\[\e[01;31m\]\[\e[0m\] \[\e[30;1m\][\t]\e[0m\]\n$ "

# LS_COLORS
if [ $(uname) == "FreeBSD" ] || [ $(uname) == "Darwin" ]; then
    export LSCOLORS="CxGxDxDxFxDxDxDxDxDxDx"
    alias ls="ls -G"
else
    export LS_COLORS="di=1;32:fi=0:ln=1;36:ex=1;35:pi=1;33:so=1;33:bd=1;33:cd=1;33:or=1;33:mi=1;33"
    alias ls='ls --color=always'
fi

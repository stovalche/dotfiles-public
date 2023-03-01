# If not running interactively, don't do anything ========================================
[[ $- != *i* ]] && return
# ========================================================================================
# prompt highlights ======================================================================
if [ $(id -u) = 0 ]; then
  user_hi="\033[0;31m\033[0m\033[0;30m\033[41m \u \033[0;31m\033[40m \033[0m"
else
  user_hi="\033[0;34m\033[0m\033[0;30m\033[44m \u \033[0;34m\033[40m \033[0m"
fi
hostname_hi="\033[0;40m\033[40m\h  \033[0m"
path_hi="\033[0;37m\033[40m\W \033[0;30m\033[0m"
PS1="$user_hi$hostname_hi$path_hi "
# ========================================================================================
# aliases ================================================================================
alias wget='wget --hsts-file="$XDG_DATA_HOME"'
alias v='nvim'
alias ls='ls -l -A --color=auto --group-directories-first'
alias g='git'
alias ll='exa -l -a --group-directories-first --color=automatic --long --icons'
alias netbeans="netbeans --userdir "${XDG_DATA_HOME}"/netbeans"
# ========================================================================================

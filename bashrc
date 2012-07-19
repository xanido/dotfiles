PATH=$PATH:/usr/local/mysql/bin:/usr/local/liquibase:/usr/local/sbin:/usr/local/composer/global/bin

alias ls="ls -G"
alias ..="cd .."
alias -- -="cd -"

find /Users/pictura4/.ssh -type f -not -regex ^.*.pub$ -not -name config -not -name known_hosts -exec ssh-add \{\} \;

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'                           
export LESS_TERMCAP_so=$'\E[01;44;33m'                                 
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

export GREP_OPTIONS='--color=auto'

source ~/.bash/git-prompt

clear

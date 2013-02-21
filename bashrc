PATH=/usr/local/php5/bin:$PATH:/usr/local/mysql/bin:/usr/local/liquibase:/usr/local/sbin:/usr/local/composer/global/bin:/usr/local/magerun/bin

alias ls="ls -G"
alias ..="cd .."
alias -- -="cd -"
alias flushdns="sudo killall -HUP mDNSResponder"
function getip() { nslookup "$@" | awk '{ if($1 == "Address:" && NR > 2 ){ print $2; } }' ;}

find /Users/timothy/.ssh -type f -not -regex ^.*.pub$ -not -name config -not -name known_hosts -exec ssh-add \{\} \;

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

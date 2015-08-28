source "~/.config/fish/functions/*"
source "~/.rvm/scripts/rvm" 

set fish_greeting ""
set fish_plugins brew rvm
set -x PATH /usr/local/bin /usr/local/sbin $PATH
rvm current > /dev/null
rvm > /dev/null

alias c=clear
alias g=git 
alias gs="git s"
alias gc="git cm"
alias b=bundle
alias be="bundle exec"
alias bu="bundle update"
alias bi="bundle install"
alias v="mvim"

source "~/.config/fish/functions/*"

source "~/.rvm/scripts/rvm"

set fish_greeting ""
set fish_plugins brew rvm
set -x PATH /usr/local/bin /usr/local/sbin $PATH
rvm current > /dev/null
rvm > /dev/null

#!/bin/bash

# setup gitconfig
ln -s $PWD/git/gitconfig ~/.gitconfig

# setup fish (rvm/nvm) 
ln -s $PWD/fish/ ~/.config/fish/

# setup ruby stuff, gemrc, irb, rails default settings
ln -s $PWD/ruby/gemrc ~/.gemrc 
ln -s $PWD/ruby/irbrc ~/.irbrc 
ln -s $PWD/ruby/railsrc ~/.railsrc 

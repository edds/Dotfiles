#!/bin/bash

# Inspired and in parts borrowed from 
# https://raw.github.com/thoughtbot/dotfiles/master/install.sh

black='\033[0m'
red='\033[0;31m'
green='\033[0;32m'

for name in *; do
  target="$HOME/.$name"
  if [ "$name" != 'install.sh' ]; then
    if [ -e "$target" ]; then
      echo -e "${red}Deleting old $target${black}"
      rm "$target"
    fi
    if [ -L "$target" ]; then
      echo -e "${red}Deleting old $target${black}"
      rm "$target"
    fi
    echo -e "${green}Creating $target${black}"
    ln -s "$PWD/$name" "$target"
  fi
done

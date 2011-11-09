#!/bin/sh

# Inspired and in parts borrowed from 
# https://raw.github.com/thoughtbot/dotfiles/master/install.sh

for name in *; do
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      echo 'rm "$target"'
      echo 'ln -s "$PWD/$name" "$target"'
    fi
  else
    if [ "$name" != 'install.sh' ]; then
      echo "Creating $target"
      echo 'ln -s "$PWD/$name" "$target"'
    fi
  fi
done

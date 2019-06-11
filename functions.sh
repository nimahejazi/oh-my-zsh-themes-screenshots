#!/bin/bash

# functions to quickly change theme, reload current terminal
# and move the screen shot into right folder

function change_theme() {
  sed -i '' "33s/ZSH_THEME='.*'/ZSH_THEME='$1'/" ~/.zshrc
}

function reload_terminal() {
  reload
  clear
}

function mv_ss() {
  find ~/Desktop/ -name "Screen*" -mtime -1d -exec mv {} ~/Desktop/oh-my-zsh\ themes/$(sed -n 33p ~/.zshrc | cut -d\' -f2).png \;
}

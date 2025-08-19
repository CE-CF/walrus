#!/bin/bash

# source config files
source ../.paths.sh

grep_line="include walrus-theme.conf"
file="$HOME/.config/kitty/kitty.conf"
append_line="# BEGIN_KITTY_THEME\n# Walrus\ninclude walrus-theme.conf\n# END_KITTY_THEME"

if ln -sf $KITTY_THEME_PATH $KITTY_THEME_SYMLINK; then
      find_and_append "$grep_line" "$file" "$append_line" 
fi
echo "$?"
echo "$WALRUS_PATH"

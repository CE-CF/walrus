#!/bin/bash

find_append() {
      line="$1"
      file="$2"

      grep -Fxq "$line" "$file" || echo "$line" >> "$file"
}

CONFIG_PATH="$HOME/.config"
NVIM_CONFIG="$CONFIG_PATH/nvim"
NVIM_INIT="$NVIM_CONFIG/init.lua"
WALRUS_THEME_PATH="$PWD/colors.lua"
APPEND_WALRUS_THEME="require(\"colors\")"
WALRUS_THEME_LOCATION="$HOME/.config/nvim/lua/colors.lua"

echo "$CONFIG_PATH"
echo "$NVIM_CONFIG"
echo "$NVIM_INIT"
echo "$WALRUS_THEME_PATH"
echo "$APPEND_WALRUS_THEME"
echo "$WALRUS_THEME_LOCATION"

if ln -sf $WALRUS_THEME_PATH $WALRUS_THEME_LOCATION; then
      find_append $APPEND_WALRUS_THEME $NVIM_INIT
fi

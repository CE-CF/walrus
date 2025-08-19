# General config
CONFIG_PATH="$HOME/.config"
# Walrus config theme
WALRUS_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# NVIM config
NVIM_PATH="$CONFIG_PATH/nvim"
NVIM_INIT="$NVIM_CONFIG/init.lua"
NVIM_THEME_PATH="$NVIM_CONFIG/lua/colors.lua"
NVIM_THEME_SYMLINK="$WALRUS_PATH/nvim/colors.lua"

# Kitty
KITTY_PATH="$CONFIG_PATH/kitty"
KITTY_CONFIG="$KITTY_PATH/kitty.conf"
KITTY_THEME_PATH="$KITTY_PATH/walrus-theme.conf"
KITTY_THEME_SYMLINK="$WALRUS_PATH/kitty/walrus-theme.conf"

# Functions
find_and_append() {
      grep_line="$1"
      file="$2"
      append="$3"
      
      grep -Fxq "$grep_line" "$file" || echo -e "$append_line" >> "$file"
}

#!/bin/bash

# Define the source directory (where this script is located)
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define the target configuration directory
CONFIG_DIR="$HOME/.config"

# Function to create a symbolic link
create_symlink() {
    SOURCE="$1"
    TARGET="$2"

    if [ -L "$TARGET" ]; then
        echo "Removing existing symlink: $TARGET"
        rm "$TARGET"
    elif [ -d "$TARGET" ]; then
        echo "Backing up existing directory: $TARGET to ${TARGET}.bak"
        mv "$TARGET" "${TARGET}.bak"
    elif [ -f "$TARGET" ]; then
        echo "Backing up existing file: $TARGET to ${TARGET}.bak"
        mv "$TARGET" "${TARGET}.bak"
    fi

    echo "Creating symlink: $SOURCE -> $TARGET"
    ln -s "$SOURCE" "$TARGET"
}

# Ensure ~/.config exists
mkdir -p "$CONFIG_DIR"

# --- Installation Functions ---

install_i3() {
    echo "Installing i3 dotfiles..."
    mkdir -p "$CONFIG_DIR/i3"
    create_symlink "$DOTFILES_DIR/i3/config" "$CONFIG_DIR/i3/config"
    create_symlink "$DOTFILES_DIR/i3/appearance.conf" "$CONFIG_DIR/i3/appearance.conf"
    create_symlink "$DOTFILES_DIR/i3/autostart.conf" "$CONFIG_DIR/i3/autostart.conf"
    create_symlink "$DOTFILES_DIR/i3/keymaps.conf" "$CONFIG_DIR/i3/keymaps.conf"
    create_symlink "$DOTFILES_DIR/i3/windowrules.conf" "$CONFIG_DIR/i3/windowrules.conf"
    create_symlink "$DOTFILES_DIR/i3/workspaces.conf" "$CONFIG_DIR/i3/workspaces.conf"
    echo "i3 dotfiles installed."
}

install_fish() {
    echo "Installing Fish dotfiles..."
    mkdir -p "$CONFIG_DIR/fish"
    create_symlink "$DOTFILES_DIR/fish/config.fish" "$CONFIG_DIR/fish/config.fish"
    create_symlink "$DOTFILES_DIR/fish/abbreviations.fish" "$CONFIG_DIR/fish/abbreviations.fish"
    create_symlink "$DOTFILES_DIR/fish/fish_plugins" "$CONFIG_DIR/fish/fish_plugins"
    create_symlink "$DOTFILES_DIR/fish/fish_variables" "$CONFIG_DIR/fish/fish_variables"
    create_symlink "$DOTFILES_DIR/fish/completions" "$CONFIG_DIR/fish/completions"
    create_symlink "$DOTFILES_DIR/fish/conf.d" "$CONFIG_DIR/fish/conf.d"
    create_symlink "$DOTFILES_DIR/fish/functions" "$CONFIG_DIR/fish/functions"
    create_symlink "$DOTFILES_DIR/fish/themes" "$CONFIG_DIR/fish/themes"
    echo "Fish dotfiles installed."
}

install_nvim() {
    echo "Installing Neovim dotfiles..."
    mkdir -p "$CONFIG_DIR/nvim"
    create_symlink "$DOTFILES_DIR/nvim/init.lua" "$CONFIG_DIR/nvim/init.lua"
    create_symlink "$DOTFILES_DIR/nvim/lazy-lock.json" "$CONFIG_DIR/nvim/lazy-lock.json"
    create_symlink "$DOTFILES_DIR/nvim/after" "$CONFIG_DIR/nvim/after"
    create_symlink "$DOTFILES_DIR/nvim/autoload" "$CONFIG_DIR/nvim/autoload"
    create_symlink "$DOTFILES_DIR/nvim/ftdetect" "$CONFIG_DIR/nvim/ftdetect"
    create_symlink "$DOTFILES_DIR/nvim/ftplugin" "$CONFIG_DIR/nvim/ftplugin"
    create_symlink "$DOTFILES_DIR/nvim/lua" "$CONFIG_DIR/nvim/lua"
    create_symlink "$DOTFILES_DIR/nvim/luasnip-snippets" "$CONFIG_DIR/nvim/luasnip-snippets"
    create_symlink "$DOTFILES_DIR/nvim/template" "$CONFIG_DIR/nvim/template"
    create_symlink "$DOTFILES_DIR/nvim/vscode-snippets" "$CONFIG_DIR/nvim/vscode-snippets"
    create_symlink "$DOTFILES_DIR/nvim/zettelkasten" "$CONFIG_DIR/nvim/zettelkasten"
    echo "Neovim dotfiles installed."
}

install_kitty() {
    echo "Installing Kitty dotfiles..."
    mkdir -p "$CONFIG_DIR/kitty"
    create_symlink "$DOTFILES_DIR/kitty/kitty.conf" "$CONFIG_DIR/kitty/kitty.conf"
    create_symlink "$DOTFILES_DIR/kitty/gruvbox-dark.conf" "$CONFIG_DIR/kitty/gruvbox-dark.conf"
    create_symlink "$DOTFILES_DIR/kitty/kitty-themes" "$CONFIG_DIR/kitty/kitty-themes"
    echo "Kitty dotfiles installed."
}

install_picom() {
    echo "Installing Picom dotfiles..."
    mkdir -p "$CONFIG_DIR/picom"
    create_symlink "$DOTFILES_DIR/picom/picom.conf" "$CONFIG_DIR/picom/picom.conf"
    echo "Picom dotfiles installed."
}

install_fastfetch() {
    echo "Installing Fastfetch dotfiles..."
    mkdir -p "$CONFIG_DIR/fastfetch"
    create_symlink "$DOTFILES_DIR/fastfetch/config.jsonc" "$CONFIG_DIR/fastfetch/config.jsonc"
    create_symlink "$DOTFILES_DIR/fastfetch/config-compact.jsonc" "$CONFIG_DIR/fastfetch/config-compact.jsonc"
    create_symlink "$DOTFILES_DIR/fastfetch/config-pokemon.jsonc" "$CONFIG_DIR/fastfetch/config-pokemon.jsonc"
    create_symlink "$DOTFILES_DIR/fastfetch/config-v2.jsonc" "$CONFIG_DIR/fastfetch/config-v2.jsonc"
    echo "Fastfetch dotfiles installed."
}

# Main menu
echo "Welcome to your dotfiles installer!"
echo "Please select which dotfiles you'd like to install:"
echo "1) All dotfiles"
echo "2) i3"
echo "3) Fish"
echo "4) Neovim"
echo "5) Kitty"
echo "6) Picom"
echo "7) Fastfetch"
echo "0) Exit"

read -p "Enter your choice: " choice

case $choice in
    1)
        install_i3
        install_fish
        install_nvim
        install_kitty
        install_picom
        install_fastfetch
        ;;
    2)
        install_i3
        ;;
    3)
        install_fish
        ;;
    4)
        install_nvim
        ;;
    5)
        install_kitty
        ;;
    6)
        install_picom
        ;;
    7)
        install_fastfetch
        ;;
    0)
        echo "Exiting installer. No changes made."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please try again."
        ;;
esac

echo "Installation complete!"

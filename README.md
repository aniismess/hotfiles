# My Dotfiles: Now with 100% More Dank Memes

Welcome to my humble abode, where the code is clean, the configs are spicy, and the memes are always dank. These are my personal dotfiles, the secret sauce that makes my development environment feel like home. I've poured countless hours into this setup, and now I'm sharing it with the world. Use it, abuse it, but please, don't make me regret it.

## What's Inside This Digital Treasure Chest?

This repo is a veritable cornucopia of configurations for all your favorite command-line tools:

*   **i3:** The window manager for people who think GUIs are for casuals. My i3 setup is so minimal, it makes a Zen garden look cluttered.
*   **Fish:** The shell that's so good, it'll make you want to slap your mama. Or at least, it'll make you forget that Bash ever existed.
*   **Neovim:** The one true editor. I've customized it with so much Lua, it's practically a new application. It's fast, it's beautiful, and it's probably smarter than you are.
*   **Kitty:** The terminal emulator that's faster than a cat on a hot tin roof. It's so good, it'll make you want to live in your terminal.
*   **Picom:** The compositor that adds just the right amount of eye candy. It's like putting a little bit of lipstick on a pig, but in a good way.
*   **Fastfetch:** Because who doesn't want to show off their sick Arch Linux setup? It's like a digital peacock.
*   **Obsidian:** My second brain. It's where I keep all my brilliant ideas, my half-baked schemes, and my grocery lists.

Each of these directories has its own `README.md` file, where I'll try to explain my genius-level configurations in a way that even a mere mortal can understand.

## Prerequisites

Before running the installation script, ensure you have the following installed on your Arch Linux system:

*   **Git**: For cloning this repository.
*   **Sudo**: For elevated privileges during package installation.
*   **An AUR Helper**: Either `yay` or `paru` is required for automatic dependency installation.

If you need to install these, you can typically do so with:

```bash
sudo pacman -S git sudo
# For yay (example):
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
# For paru (example):
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

## Dependencies

These dotfiles rely on several packages. The `install.sh` script will attempt to install these automatically using your detected AUR helper (`yay` or `paru`). If you prefer to install them manually, here's a list of the common dependencies:

```bash
yay -S ttf-jetbrains-mono-nerd dunst polybar nitrogen networkmanager-applet rofi fish neovim kitty picom fastfetch i3-gaps obsidian
```

## Installation

To install these dotfiles, navigate to the root of this repository and run the `install.sh` script:

```bash
./install.sh
```

The script will present you with a menu to choose which dotfiles you'd like to install. It will also attempt to install necessary packages using `yay` or `paru` if available on your system. Feel free to modify these dotfiles to suit your personal preferences and workflow after installation!

## My Guiding Philosophy (or lack thereof)

I'm not gonna lie, I'm mostly just making this up as I go along. But if I had to put a label on it, I'd say my philosophy is something like this:

*   **Speed is key:** I want my computer to be faster than my brain, which isn't saying much, but still.
*   **Keyboards are for typing, not for mousing:** If I have to touch a mouse, I've already lost.
*   **Looks matter:** I'm not a monster. I want my workspace to be as beautiful as it is functional.
*   **It's my party, and I'll cry if I want to:** These dotfiles are for me, first and foremost. But if you like them, that's cool too.

## You Want to Contribute? Seriously?

If you've got a suggestion that's so good it'll make me question my own sanity, then by all means, open an issue or a pull request. But be warned, I'm a harsh critic. I'm also happy to answer any questions you might have, as long as they're not dumb.

## License

These dotfiles are released under the MIT License. That means you can do whatever you want with them, as long as you don't sue me. See the `LICENSE` file for the boring legal stuff.

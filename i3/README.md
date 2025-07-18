# My i3 Window Manager Setup: Because I Like to Suffer (Efficiently)

This is my personal i3 configuration. If you're not familiar with i3, it's a tiling window manager. That means no overlapping windows, no fancy animations, just pure, unadulterated efficiency. It's like a spreadsheet for your desktop.

I've structured it to be modular and easy to understand. Because even though I like to suffer, I also like to know why I'm suffering.

## Configuration Structure: The Method to My Madness

My main `config` file is very simple. It just sources the other configuration files from my `~/.config/i3/` directory. It's like a table of contents for my suffering.

```
# made by ani
include ~/.config/i3/workspaces.conf
include ~/.config/i3/appearance.conf
include ~/.config/i3/keymaps.conf
include ~/.config/i3/windowrules.conf
include ~/.config/i3/autostart.conf

focus_follows_mouse yes
```

Here's a breakdown of what each file does (and why I made these choices):

### `appearance.conf`: Making My Suffering Look Good

This file controls the look and feel of my i3 environment. I've set my preferred font to `JetBrainsMono Nerd Font`, because I'm a font snob. And the colors? Oh, the colors! They're so good, they'll make you want to cry.

### `autostart.conf`: The Things That Just Happen

This is where I define all the applications and services that I want to start automatically when I log in. It's like a chore list for my computer. It includes:

*   `picom`: For compositing effects. Because even a minimalist needs a little eye candy.
*   `dunst`: My notification daemon. Because I need to know when someone's trying to reach me.
*   `polybar`: My status bar. It's like a dashboard for my life.
*   `nitrogen`: To restore my wallpaper. Because I like my desktop to be pretty.
*   `nm-applet`: For managing network connections. Because the internet is important.

### `keymaps.conf`: My Secret Language

I've defined all my custom keybindings in this file. I use the `Mod4` key (the "Windows" key) as my primary modifier. It's like a secret language, but only I speak it. Here are some of the keybindings I use most often:

*   `$mod+Return`: Opens my terminal (`kitty`). Because I'm always in the terminal.
*   `$mod+w`: Opens my web browser (`firefox`). Because sometimes, I need to escape.
*   `$mod+d`: Opens `rofi`, my application launcher. Because I'm too lazy to type out full application names.
*   `$mod+q`: Kills the focused window. Because sometimes, applications misbehave.

### `windowrules.conf`: Taming the Wild West

This file contains rules for managing how specific windows should behave. For example, I have rules to make sure that certain applications always open in a floating window. Because some applications just don't play well with others.

### `workspaces.conf`: My Digital Desks

I like to keep my workspaces organized. This file assigns specific applications to workspaces. It's like having a bunch of different desks for different tasks. It helps me keep my workflow tidy and efficient. Or at least, that's what I tell myself.
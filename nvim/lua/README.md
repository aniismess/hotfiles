# The `lua` Directory: Where the Magic Happens (and sometimes breaks)

This directory is the heart and soul of my Neovim configuration. It's where I keep all my custom Lua code, meticulously organized (mostly) so I can pretend I know what I'm doing.

## `rc/` - The Control Center (or the place where I spend most of my time debugging)

This is the most important subdirectory. It's like the command center of my editor, where all the crucial decisions are made. Here's a sneak peek:

*   `base.lua`: The foundation. It sets up the basic stuff, like making sure my editor doesn't spontaneously combust.
*   `option.lua`: All my global Neovim options. It's where I tell Neovim how to behave, like a strict parent.
*   `display.lua`: The aesthetics. This file makes my editor look pretty, because who wants to stare at an ugly editor all day?
*   `mappings.lua`: My custom keybindings. I've got so many, I sometimes forget what they do. It's like a secret language, but only I speak it.
*   `pluginlist.lua`: Where I manage all my plugins. It's like a carefully curated collection of digital toys.
*   `disabled-pluginlist.lua`: The graveyard of plugins. They tried, they failed, now they rest in peace.
*   `autocmd.lua`: My custom autocommands. They're like little automated helpers, doing things for me so I don't have to.
*   `command.lua`: My custom Ex commands. Shortcuts for the lazy, like me.

### `pluginconfig/`

This is where I configure each of my plugins. It's like giving each toy its own instruction manual.

### `myplugins/`

My own little custom plugins. They're small, they're simple, and they're probably buggy. But they're mine.

## How to Add Your Own Awesomeness

If you want to add your own custom settings, here's the deal:

*   **New plugins:** Add them to `lua/rc/pluginlist.lua` and create a config file in `lua/rc/pluginconfig/`. It's like adopting a new pet.
*   **New keymappings:** Add them to `lua/rc/mappings.lua`. Just try to remember them.
*   **New options:** Add them to `lua/rc/option.lua`. Don't break anything.
*   **New autocommands:** Add them to `lua/rc/autocmd.lua`. Let the robots do the work.
*   **New custom commands:** Add them to `lua/rc/command.lua`. Be lazy, be proud.

Follow this structure, and you'll be fine. Probably.
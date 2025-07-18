# My Neovim Config: The Last Editor You'll Ever Need

This is my Neovim configuration. It's my baby, my pride and joy. I've spent more time on this than I have on most of my relationships. It's fast, it's beautiful, and it's probably smarter than both of us combined.

My entire configuration is written in Lua, because I'm a masochist. But it's also because Lua is fast and extensible, and it makes my editor feel like a well-oiled machine.

## My So-Called "Philosophy"

I'm not going to bore you with a bunch of buzzwords. Here's the deal:

*   **I like it fast:** I want my editor to be so fast, it's like it's reading my mind.
*   **I like it modular:** I've broken down my config into a bunch of small files. It's like a Lego set for your editor.
*   **I like it extensible:** I can add new plugins and features without breaking everything. It's like a Jenga tower that never falls over.
*   **I like it pretty:** I'm not a savage. I want my editor to be as beautiful as it is functional.

## The Guts of the Beast

Here's a quick look at how I've organized this monstrosity:

*   `init.lua`: The file that kicks everything off. It's like the first domino in a very long and complicated chain reaction.
*   `lua/`: This is where the real magic happens. It's where I keep all my custom Lua code.
*   `after/`: For all the stuff that needs to be loaded last. It's like the after-party for your editor.
*   `ftdetect/`: For all my custom filetype detections. Because sometimes, Neovim needs a little help.
*   `ftplugin/`: For all my filetype-specific settings. Because not all files are created equal.
*   `luasnip-snippets/`: My personal collection of snippets. Because I'm too lazy to type the same thing over and over again.
*   `template/`: My collection of file templates. Because I'm too lazy to start from scratch.
*   `vscode-snippets/`: Because sometimes, you have to steal from the enemy.
*   `zettelkasten/`: My Zettelkasten setup. Because I'm trying to be one of those smart people who takes a lot of notes.

I'll try to explain each of these directories in their own `README.md` files. But no promises.
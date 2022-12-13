# The GigaChad config

A damn good config with a BUNCH of things I use daily. Neovim is a daily driver for me so I might as well write a good config to make it usable in even over long development sessions...

Adapted from [LunarVim's Basic IDE Config](https://github.com/LunarVim/nvim-basic-ide)

## Installation

Remove or move your current `nvim` config directory (usually at `~/.config/nvim`)

`git clone https://github.com/cstanze/nvim-config.git ~/.config/nvim`

Run `nvim` and wait for the plugins to be installed.

**Note:** First time you may get an error. Just ignore them and press enter, it will say nvim-ts-context-commentstring is not installed but that is fine just close and reopen nvim and everything should be fine

**Note (part-2):** You will also notice treesitter pullig in a bunch of parsers the next time you open Neovim. This is normal behaviour.

## Batteries included!

This includes config includes basically everything you need to get started with an IDE environment.

- Beautiful TUI interface
- Comprehensive editing
- A fully featured file tree
- Debug adapter protocol (DAP) support
- Language server protocol (LSP) support
- Treesitter support

And more...

## Caveats

There may be some deprecated plugins but mainly because I prefer Neovim 8.0 for stability. So far its only `neoscroll.nvim` but if there are any other deprecated plugins or any piece of deprecated code, please submit an issue and I'll look into fixing it.

## Extra configuration

**TODO**

--

> The computing scientist's main challenge is not to get confused by the complexities of his own making.
- Edsger W. Dijkstra


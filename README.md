> **This is a work in progress and is likely to change**

---

# Night Hawk

> Dark colors for Vim and friends.

![Night Hawk Screenshot][screenshot]

---

### Batteries included

-   Vim theme
    -   Lightline theme included
-   TMUX theme
-   iTerm Colors

---

---

### Syntaxes and Plugins

This is a list of syntax and plugins that have custom color definitions.

| Language | Package     |
| -------- | ----------- |
| JSON     | Vim Default |
| YAML     | Vim Default |

| Plugin   | Packages                                                    |
| -------- | ----------------------------------------------------------- |
| ALE      | [w0rp/ale](https://github.com/w0rp/ale)                     |
| Startify | [mhinz/vim-startify](https://github.com/mhinz/vim-startify) |

### Installation

#### Vim

I recommend using [vim plug](https://github.com/junegunn/vim-plug) to install
it:

```viml
" vim-plug
Plug 'filipekiss/night-hawk'
```

Or, if you download/clone this repository to a local folder in your computer

```viml
" vim-plug
Plug '~/Downloads/night-hawk'
```

Once installed, change your colorscheme

```viml
colorscheme nighthawk
```

To enable lightline support:

```viml
let g:lightline.colorscheme = 'nighthawk'
```

#### iTerm Colors

Just double-click the file `iTerm/Night-Hawk.itermcolors` and it will be
imported to iTerm.

If the colors are not applied directly, go to:
`Preferences > Profiles > (Profile Name in left pane) > Colors > Color Presets...`
and then select the `Night Hawk` theme.

#### TMUX

There are two files provided inside the `tmux` folder:
`tmux/nighthawk.tmux.conf` and `tmux/nighthawk.color.tmux.conf`. The first one
is the full setup as you see on the screenshot above. The second one is just the
colors assigned to variables to be used in your own TMUX configuration as you
see fit. To use that, you can either copy and paste from the file or you can
`source-file /path/to/night-hawk/repository/tmux/nighthawk.color.tmux.conf`
before you use the variables. Using the `source-file` option allows you to keep
your color variables up-to-date if I ever edit them and push new versions :)

---

#### Inspiration and thanks

-   [Falcon][1], for inspiring me to make a theme that integrates Vim and TMUX
    so well
-   [Night Owl][2], for being one of the nicest looking themes for [VSCode][3]
    and inspiring the colors for this theme
-   [Estilo][4], for allowing me to sanely write vim colorschemes

**nighthawk** © 2019+, Filipe Kiss • Released under the [MIT] License.<br>
Authored and maintained by Filipe Kiss.

> GitHub [@filipekiss](https://github.com/filipekiss) &nbsp;&middot;&nbsp;
> Twitter [@filipekiss](https://twitter.com/filipekiss)

[screenshot]:
    https://user-images.githubusercontent.com/48519/56898553-b9081080-6a67-11e9-900a-e1d53d0b737e.png
[mit]: http://mit-license.org/
[1]: https://github.com/fenetikm/falcon
[2]: https://github.com/sdras/night-owl-vscode-theme
[3]: https://code.visualstudio.com/
[4]: https://github.com/jacoborus/estilo

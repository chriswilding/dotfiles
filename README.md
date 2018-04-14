# dotfiles

## Italics and true colour in tmux

In iTerm set Profiles -> Terminal -> Report Terminal Type to tmux and run the
following commands:

```sh
$ tic -o ~/.terminfo tmux-256color.terminfo
$ tic -o ~/.terminfo tmux.terminfo
```

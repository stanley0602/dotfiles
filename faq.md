# FAQ

## How to enable mouse scroll inside tmux windows?
- In the Terminal app on your Mac, choose View > Allow Mouse Reporting
- Inside tmux, enalbe mouse by `set -g mouse on` (CTRL+A M for my settings)

## The promptline does not show the configured color, but only show the command?
- zgen script did not install the oh-my-zsh correctly, cause oh-my-zsh is under ohmyzsh/oh-my-zsh now
- update ZGEN_OH_MY_ZSH_REPO=ohmyzsh inside file zgen/zgen.zsh

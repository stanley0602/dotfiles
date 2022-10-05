# FAQ

## How to set up ssh access for my github
- ssh config is set [ssh/config](./ssh/config)
- follow [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) to generate pub/private keys, it'll be undert `./.ssh` foler
- change the private keys to `key_github`
- add the public key to github account
- `git remote set-url origin git@github:stanley0602/dotfiles`

## How to enable mouse scroll inside tmux windows?
- In the Terminal app on your Mac, choose View > Allow Mouse Reporting
- Inside tmux, enalbe mouse by `set -g mouse on` (CTRL+A M for my settings)

## The promptline does not show the configured color, but only show the command?
- zgen script did not install the oh-my-zsh correctly, cause oh-my-zsh is under ohmyzsh/oh-my-zsh now
- update `ZGEN_OH_MY_ZSH_REPO=ohmyzsh` inside file zgen/zgen.zsh

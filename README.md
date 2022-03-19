# dotfiles
My dotfiles

## Installing
```
$ alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
$ echo "dotfiles" >> .gitignore
$ git clone --bare https://github.com/GPMS/dotfiles.git $HOME/dotfiles
$ config checkout
```

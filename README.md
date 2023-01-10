# `dotfiles`

## How to use this repo?

```bash
# clone repo. 
git clone --bare https://github.com/meobilivang/dotfiles.git ~/.dotfiles


# set alias
alias dot="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# config git repo
dotfiles config --local core.worktree $HOME
dotfiles config --local status.showUntrackedFiles no

# using git
dotfitles <some-git-operations>
```

> Why `bare` with `git`?  [read more](https://engineeringwith.kalkayan.io/series/developer-experience/storing-dotfiles-with-git-this-is-the-way/)

## Tools/Software used

- [tmux](https://github.com/tmux/tmux)
- [zsh](https://www.zsh.org/)
    - [oh-my-zsh](https://ohmyz.sh/)
    - [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [git](https://git-scm.com/)
- [brew](https://brew.sh/)
- [vim](https://www.vim.org/)
- [VSCode](https://code.visualstudio.com/)

## TODO

- [X] `tmux`
- `zsh`:
    - [X] Basic theme `powerlevel10k` + `oh-my-zsh`
- `vim`:
    - [X] `vim` config + plugins
    - [ ] `neovim`
- [X] `VSCode`
- `brew`:
    - Installing essential apps
- Install scripts:
    - [ ] `MacOS`
    - [ ] `Linux`
- [ ] `git`

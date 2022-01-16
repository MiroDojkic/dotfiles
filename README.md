# Dotfiles
Setup using [stow](https://www.gnu.org/software/stow)
```bash
brew install stow
```
1. clone repo to `$HOME`
2. `cd` to cloned repo
3. execute
```bash
find . -mindepth 1 -not -path '*/.*' -type d | tr -d './' | xargs stow
```


export ZSH="~/.oh-my-zsh"
DISABLE_UPDATE_PROMPT="true"

plugins=(git history zsh-autosuggestions common-aliases npm zsh_reload z colored-man-pages jsontools zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

set -o vi
set keymap vi
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias alacritty="nvim ~/.config/alacritty/alacritty.yml"
alias chromep='open -a "Google Chrome" --args --proxy-pac-url=http://localhost:2000/proxy.pac'
alias ls='exa'
alias curl='curl -s'
alias cat='bat'
alias grep='rg'
alias vim='nvim'
alias npmrc='npm run dev:client'
alias npmrs='npm run dev:server'

[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

eval "$(starship init zsh)"

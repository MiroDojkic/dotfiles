export ZSH="$HOME/.oh-my-zsh"
export FZF_DEFAULT_COMMAND="fd --type f"

DISABLE_UPDATE_PROMPT="true"

plugins=(git history zsh-autosuggestions common-aliases npm z colored-man-pages zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

set -o vi
set keymap vi
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

encrypt() {
  openssl enc -aes-256-cbc -salt -in "$1" -out "$1.enc"
}

decrypt() {
  openssl enc -d -aes-256-cbc -in "$1.enc" -out "$1"
}

alias zshconfig="nvim $HOME/.zshrc"
alias ohmyzsh="nvim $HOME/.oh-my-zsh"
alias alacritty="nvim $HOME/.config/alacritty/alacritty.yml"
alias chromep='open -a "Google Chrome" --args --proxy-pac-url=http://localhost:2000/proxy.pac'
alias ls='eza'
alias curl='curl -s'
alias cat='bat --theme=ansi-dark --italic-text=always'
alias grep='rg'
alias mux='tmuxinator'
alias npmrc='npm run dev:client'
alias npmrs='npm run dev:server'
alias ghciX='ghci -XNoImplicitPrelude'

eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"
eval "$(broot --print-shell-function zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $HOME/.config/broot/launcher/bash/br

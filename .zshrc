export ZSH="$HOME/.oh-my-zsh"
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
alias cat='bat --theme=ansi-dark --italic-text=always'
alias grep='rg'
alias vim='nvim'
alias npmrc='npm run dev:client'
alias npmrs='npm run dev:server'
alias ghciX='ghci -XNoImplicitPrelude'

[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

eval "$(fnm env)"
eval "$(starship init zsh)"

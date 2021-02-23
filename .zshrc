# Terminal Customization

source ~/.aliases

# Adding brew
export PATH=/opt/homebrew/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jem/.oh-my-zsh"

ZSH_THEME="awesomepanda"

plugins=(
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


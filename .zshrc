# Terminal Customization

source ~/.aliases

# Adding brew
export PATH=/opt/homebrew/bin:$PATH

# Overwriting custom editor
export EDITOR=nvim

# Path to your oh-my-zsh installation.
export ZSH="/Users/jem/.oh-my-zsh"

# Theme
ZSH_THEME="agnoster"

# Plugins list
plugins=(emoji zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

prompt_context() {
  prompt_segment black default "$(random_emoji)"
}

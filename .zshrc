# Terminal Customization

source ~/.aliases

# Adding brew
export PATH=/opt/homebrew/bin:$PATH

export EDITOR=nvim

# Path to your oh-my-zsh installation.
export ZSH="/Users/jem/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=()

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

prompt_context() {
  # Custom (Random emoji)
  emojis=("⚡️" "🔥" "💀" "🤹" "😎" "🐸" "🐵" "🦄" "🌈" "🍻" "🚀" "💡" "🎉" "🔑" "🇪" "♥️" "🌙")
  RAND_EMOJI_N=$(( $RANDOM % ${#emojis[@]} + 1))
  prompt_segment black default "${emojis[$RAND_EMOJI_N]} "
}

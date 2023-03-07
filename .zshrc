# Terminal Customization
source ~/.aliases

# Adding brew
export PATH=/opt/homebrew/bin:$PATH

# Overwriting custom editor
export EDITOR=nvim

# Path to your oh-my-zsh installation.
export ZSH="/Users/jem/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Plugins list
plugins=(emoji zsh-autosuggestions zsh-syntax-highlighting)
source ~/Git/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias luamake=/Users/jem/.config/lua-language-server/3rd/luamake/luamake

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

# Git helpers
squash_on () {
  # If user just enters 'squash_on', give help text
  if (( # == 0 )); then
    echo This will squash your current branch down to one unstaged commit.
    echo Use by typing squash_on rootBranchName
    echo usage: squash_on develop
  fi
  # If a root branch is provided, run the squasher
  if (( # == 1 )); then
    branch=$(git symbolic-ref HEAD)
    echo Squashing all commits from $branch
    git reset $(git merge-base $1 $branch)
    echo ------SUCCESS!------
    echo Commits successfully squashed, all file changes are unstaged.
    echo Run 'git add -A' and 'git commit -m "your commit message"' to add your squashed commit.
  fi
}

# Add colors to Terminal
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

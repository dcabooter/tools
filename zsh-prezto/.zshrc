#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Make tilix happy
[[ $TILIX_ID ]] || [[ $VTE_VERSION ]] && source /etc/profile.d/vte.sh

# Set clobber
setopt CLOBBER

# Aliases
alias oct="octant 2>/dev/null"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Autocompletion kubectl
source <(kubectl completion zsh)

# DSO config
[[ ! -f ~/.dsorc ]] || source ~/.dsorc
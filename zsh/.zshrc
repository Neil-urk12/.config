# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
fastfetch

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# fnm
FNM_PATH="/home/imisenak/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "$(fnm env --shell zsh)"
fi

autoload -Uz compinit
compinit

alias cd=z
alias y=yazi
alias c=clear
alias e=exit
alias ls=eza
alias lg=lazygit

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# opencode
export PATH=/home/imisenak/.opencode/bin:$PATH

# bun completions
[ -s "/home/imisenak/.bun/_bun" ] && source "/home/imisenak/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/home/imisenak/.local/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"

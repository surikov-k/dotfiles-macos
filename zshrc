echo 'Hello from .zchrc 😸'

# Set variables

# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat

# Change ZSH Options

# Create Aliases
alias ls="exa -laFh --git"
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias gst='git status'
alias gaa='git add .'

# setup git information
autoload -Uz vcs_info
precmd_functions+=(vcs_info)
setopt prompt_subst
# %b: branch
# %u: unstaged changes
zstyle ':vcs_info:git:*' formats '%F{blue}<%F{red}%b%f%F{blue}> %F{yellow}%u %f'
# this makes %u work, but also the prompt is clearly slower in git dirs when this is on
zstyle ':vcs_info:*' check-for-changes true
# what string to use for %u when there are unstaged changes
zstyle ':vcs_info:*' unstagedstr '✕'
# vcs_info supports multiple version control systems, but I need just git
zstyle ':vcs_info:*' enable git

#Customize Prompts(s)
# PROMPT='
# %F{green}%1~%f >#'
PROMPT='
%(?.%F{green}➞.%F{red}➞)  %F{blue}%1~%f ${vcs_info_msg_0_}'
# RPROMPT='%(?..%F{red}(%?%) %f)%n@%m %*'
RPROMPT='%(?..%F{red}(%?%) %f)'

# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Write Handy Funcitons
function mkcd() {
  mkdir -p "$@" && cd "$_"
}

# Use ZSH Plugins

#



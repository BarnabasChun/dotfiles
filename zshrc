# Set Variables
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change ZSH Options
eval "$(starship init zsh)"


# Create Aliases
alias ls='ls -lAFh'
alias c='clear'
alias s='source ~/.zshrc'
alias dev='npm run dev'
alias rm='trash'
alias bbd="brew bundle dump --force --describe"
alias trail='<<<${(F)path}'

# GIT ALIASES
alias gpr='git remote prune origin'
alias ff='gpr && git pull --ff-only'
alias gc='git commit'
alias gco='git checkout'
alias gcl='gco -'
alias gnuke='git add . && git commit --amend --no-edit && git push -f'

# Customize Prompt(s)

# Add Locations to $PATH Variables
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Handy Functions
function mkcd() {
    # @ = argument
    # _ = use last argument
    mkdir -p "$@" && cd "$_";
}

# ZSH Plugins
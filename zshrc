# Set Variables

# Change ZSH Options
eval "$(starship init zsh)"


# Create Aliases
alias ls='ls -lAFh'
alias c='clear'
alias s='source ~/.zshrc'
alias dev='npm run dev'
alias rm='trash'

# GIT ALIASES
alias gpr='git remote prune origin'
alias ff='gpr && git pull --ff-only'
alias gc='git commit'
alias gco='git checkout'
alias gcl='gco -'
alias gnuke='git add . && git commit --amend --no-edit && git push -f'

# Customize Prompt(s)

# Add Locations to $PATH Variables



# Handy Functions
function mkcd() {
    # @ = argument
    # _ = use last argument
    mkdir -p "$@" && cd "$_";
}

# ZSH Plugins
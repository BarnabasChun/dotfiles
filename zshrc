# Set Variables

# Change ZSH Options
eval "$(starship init zsh)"


# Create Aliases
alias ls='ls -lAFh'

# Customize Prompt(s)

# Add Locations to $PATH Variables



# Handy Functions
function mkcd() {
    # @ = argument
    # _ = use last argument
    mkdir -p "$@" && cd "$_";
}

# ZSH Plugins
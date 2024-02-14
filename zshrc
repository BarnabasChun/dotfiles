# Set Variables
export NULLCMD=bat
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change ZSH Options
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Create Aliases
alias ls='eza'
alias ll='eza -lahF'
alias c='clear'
alias s='source ~/.zshrc'
alias dev='npm run dev'
alias rm='trash'
alias man='batman'
alias bbd="brew bundle dump --force --describe"
alias trail='<<<${(F)path}'
alias lg='lazygit'
alias tupdate='tmux source-file ~/.tmux.conf'

# GIT ALIASES
alias gpr='git remote prune origin'
alias ff='gpr && git pull --ff-only'
alias gc='git commit'
alias gco='git checkout'
alias gcl='gco -'
alias gnuke='git add . && git commit --amend --no-edit && git push -f'

# Customize $PATH

# used to make the elements of the path array unique
typeset -U path

# Add Locations to $path array
path=(
    $path
    "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)

# asdf setup
. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath) # append completions to fpath
autoload -Uz compinit && compinit # initialise completions with ZSH's compinit

# Handy Functions
function mkcd() {
    # @ = argument
    # _ = use last argument
    mkdir -p "$@" && cd "$_";
}

# ZSH Plugins
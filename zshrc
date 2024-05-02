###############################################################################
# VARIABLES                                                                   #
##############################################################################s
export NULLCMD=bat
# disables warning about application downloaded from internet if brew cask
export HOMEBREW_CASK_OPTS="--no-quarantine"

###############################################################################
# CUSTOMIZE TERMINAL                                                          #
##############################################################################s
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

###############################################################################
# GENERAL ALIASES                                                             #
###############################################################################
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

###############################################################################
# GIT ALIASES                                                                 #
###############################################################################

# misc
alias gpr='git remote prune origin'
alias ff='gpr && git pull --ff-only'
alias gst='git status'

# commit
alias gc='git commit'
alias gcm='gc -m'
alias gca='gc --amend'
alias gcan='gca --no-edit'
alias gcam='gc -am'

# add
alias gaa='git add .'
alias gap='git add -p'

# checkout
alias gco='git checkout'
alias gcl='gco -'
alias gcob='gco -b'

# push
alias gp='git push'
alias gpf='gp --force'

# combos
alias gulast='gaa && gcan'
alias gnuke='gulast && gpf'

# reset
alias gundo='git reset HEAD~'
alias gfuck='gundo --hard'

# npm
alias npm-link-list='npm ls -g --depth=0 --link=true'

###############################################################################
# CUSTOMIZE $PATH                                                             #
###############################################################################

# used to make the elements of the path array unique
typeset -U path

# run asdf script which prepends $PATH and sets asdf's node binary as the priority
. "$HOME/.asdf/asdf.sh"

# Add Locations to $path array
path=(
    $path
    "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)

###############################################################################
# ASDF Commpletions                                                           #
###############################################################################
fpath=(${ASDF_DIR}/completions $fpath) # append completions to fpath
autoload -Uz compinit && compinit # initialise completions with ZSH's compinit

###############################################################################
# FUNCTIONS                                                                   #
###############################################################################
function mkcd() {
    # @ = argument
    # _ = use last argument
    mkdir -p "$@" && cd "$_";
}

function gfixup() {
    git commit --fixup=$1
    git -c sequence.editor=true rebase --interactive --autosquash $1^
}

function zcode() {
  zi $1 && code .
}

function npm_unlink() {
  sudo npm rm --global $1
}
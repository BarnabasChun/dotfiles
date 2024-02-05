# !/usr/bin/env zsh

echo "\n<<< Starting Homebrew setup >>>\n"

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# terminal related
brew install --cask --no-quarantine iterm2
brew tap homebrew/cask-fonts && brew install --cask font-fira-code-nerd-font
brew install starship

# misc
brew install trash
# brew install --cask --no-quarantine visual-studio-code
# brew install --cask --no-quarantine google-chrome
brew install --cask --no-quarantine alfred

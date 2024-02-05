# !/usr/bin/env zsh

echo "\n<<< Starting Homebrew setup >>>\n"

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --verbose
#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew setup >>>\n"

if exists brew; then
  echo "Skipping install of homebrew. It is already installed."
else
  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --verbose
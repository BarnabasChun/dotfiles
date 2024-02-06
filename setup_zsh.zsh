#!/usr/bin/env zsh

echo "\n<<< Starting ZSH setup >>>\n"

echo "Enter supeuser (sudo) password to edit /etc/shells"
echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells'

echo "Enter user password to change login shell"
chsh -s '/opt/homebrew/bin/zsh'

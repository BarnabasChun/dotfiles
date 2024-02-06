#!/usr/bin/env zsh

echo "\n<<< Starting ZSH setup >>>\n"

if grep "homebrew" /etc/shells > /dev/null; then
  echo "Homebrew zsh already acceptable shell"
else
  echo "Enter supeuser (sudo) password to edit /etc/shells"
  echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi

if echo $SHELL | grep "homebrew" > /dev/null; then
  echo "Homebrew zsh already login shell"
else
  echo "Enter user password to change login shell"
  chsh -s '/opt/homebrew/bin/zsh'
fi

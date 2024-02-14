#!/usr/bin/env zsh

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs $(asdf list nodejs | tail -1 | sed 's/^ *//g')
source ~/.zshrc
#!/usr/bin/env zsh

if [ -d "${HOME}/.asdf" ]
then
  echo "asdf already downloaded"
else 
  echo "downloading asdf"
  # https://asdf-vm.com/guide/getting-started.html#_2-download-asdf
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
fi

NODE_VERSIONS=$(asdf list nodejs)

if [ "${?}" -ne 0 ]
then
  echo "installing nodejs"
  asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
  asdf install nodejs latest
fi

asdf global nodejs $(asdf list nodejs | tail -1 | sed 's/^ *//g')
source ~/.zshrc


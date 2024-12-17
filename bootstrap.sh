#!/bin/zsh

# installing command line tools
xcode-select --install

# install homebrew
if ! command -v brew
then
  sudo whoami
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi


  # install ansible
if ! command -v ansible
then
  brew install ansible
fi

# install ansible dependencies
ansible-galaxy install -r requirements.yml

# run ansible playbook
ansible-playbook -i "localhost," -c local playbook.yml

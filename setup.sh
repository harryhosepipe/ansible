#!/bin/bash

# Run the ansible playbook
sudo ansible-playbook 01_prep.yml --ask-vault-pass

# Start the ssh-agent and add the key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github-ssh

git clone git@github.com:harryhosepipe/slingshot.git ~/slingshot

sudo rm ~/.bashrc
sudo rm ~/.bash_profile

mkdir ~/bin
mkdir ~/.config

stow -d ~/slingshot bash-shell
stow -d ~/slingshot bin
stow -d ~/slingshot .ssh

source ~/.bashrc

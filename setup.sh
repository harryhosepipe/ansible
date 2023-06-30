#!/bin/bash

# Run the ansible playbook
sudo ansible-playbook 01_prep.yml --ask-vault-pass

# Start the ssh-agent and add the key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github-ssh

git clone git@github.com:harryhosepipe/slingshot.git ~/slingshot

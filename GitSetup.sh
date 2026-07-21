#!/bin/bash
# This is a simple shell script for executing everytime you wanna connect to github
# make sure you've made ssh key in the sibling directory of the current one and have added it 
# to the github setting in ssh keys

echo "Hello, Abbas!"
git config --global user.email "delshadhooman@gmail.com"
git config --global user.name "delshadhooman-code"

chmod 700 ../.ssh/
chmod 600 ../.ssh/id_ed25519
chmod 600 ../.ssh/id_ed25519.pub

eval "$(ssh-agent -s)"
ssh-add ../.ssh/id_ed25519

ssh -T git@github.com


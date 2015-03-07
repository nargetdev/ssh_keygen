#!/bin/sh
echo
echo "Adding identity..."

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/$1
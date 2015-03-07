#!/bin/sh

cd ~/.ssh

ssh-keygen -t rsa -C "narget@umich.edu" -N "" -f $1

echo
echo "Here's your public key..."
echo

cat ~/.ssh/$1.pub

echo
echo "Adding identity..."

eval "$(ssh-agent -s)"
ssh-add $1

cd -
#! /bin/bash

echo "Enter the email:"
read EMAIL
ssh-keygen -t ed25519 -C $EMAIL

echo "Copy and paste the file path generated in the previous step"
echo "It should be something like '$HOME/id_<something>' (without the '.pub' extension!)"

read IDENTITY_FILE

if [ ! -f ~/.ssh/config ]; then
    echo "~/.ssh/config file not found! Creating one"
    touch ~/.ssh/config
fi

echo "Host *
  AddKeysToAgent yes
  IdentityFile $IDENTITY_FILE" >> ~/.ssh/config

echo "Starting the ssh-agent in the background"
eval "$(ssh-agent -s)"

ssh-add -K $IDENTITY_FILE

cat "$IDENTITY_FILE.pub" | pbcopy

echo "SSH_KEY copied!" 
echo "Continue the steps from the Github documentation for inserting the SSH KEY to your account"
echo "https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account"

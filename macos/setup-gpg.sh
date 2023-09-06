#! /bin/bash

git config --global commit.gpgsign true

gpg --list-secret-keys --keyid-format=long

echo "From the list of GPG keys, copy the long form of the GPG key ID you'd like to use."
echo "It should be in the first row, the value after the slash (/)"
echo "sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]"
echo "In the example above, the GPG key ID is 3AA5C34371567BD2. Copy it"

echo "Paste the GPG key ID here:"

read GPG_KEY

git config --global user.signingkey $GPG_KEY

if [[ -z "$GPG_TTY" ]]; then
  echo "Creating the file for GPG stuff"
  touch ~/.dotfiles/gpg.bash
  echo -e "#! /bin/bash\nexport GPG_TTY=$(tty)" > ~/.dotfiles/gpg.bash
fi


#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install fnm
curl -fsSL https://fnm.vercel.app/install | bash

# Set macOS preferences
# We will run this last because this will reload the shell
#source .macos

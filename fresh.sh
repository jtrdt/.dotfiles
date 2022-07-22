#!/bin/sh

echo "Setting up new Mac..."

echo "Installing oh-my-zsh..."
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

echo "Copying zshrc file..."
rm -rf $HOME/.zshrc
cp .zshrc $HOME

echo "Adding zsh plugins..."
git clone https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete

# Install all our dependencies with Brewfile
bash brewfile

mkdir $HOME/Developer

# Set macOS preferences
echo "Setting macOS preferences..."
bash macos

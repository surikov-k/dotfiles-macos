#!/usr/bin/env zsh

green=$(tput setaf 2)
reset=$(tput sgr0)

echo "\n <<< Starting Node Setup ${green}⬢${reset} >>>\n"

# Node versions are managed with `n`, which is in the Brewfile.
# See zshrc for N_PREFIX variable and addition to PATH.

if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node & NPM with n"
  n lts
fi

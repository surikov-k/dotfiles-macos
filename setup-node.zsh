#!/usr/bin/env zsh

green=$(tput setaf 2)
reset=$(tput sgr0)

echo "\n <<< Starting Node Setup ${green}⬢${reset} >>>\n"

# Node versions are managed with `n`, which is in the Brewfile.
# See zshrc for N_PREFIX variable and addition to $path.

if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node & NPM with n"
  n lts
fi

#install Global NPM Packages
npm install --global typescript
npm install --global json-server
npm install --global http-server
npm install --global gulp-cli

echo "Global NPM Packgages Istalled:"
npm list --global --depth=0

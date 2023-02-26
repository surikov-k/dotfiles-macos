#!/usr/bin/env zsh

echo "\n <<< Starting Homebrew Setup 🍺 >>>\n"

if exists brew; then
  echo "brew exists, skipping install"
else
  echo "brew doesn't exist, continuing wiht install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# TODO: Keep an eye out for a different `--no-quarantine` solution.
# Currently, you can't do `brew bundle --no-quarantine as an option`
# It's currently exported in zshrc:
# export HOMEBREW_CASK_OPT="--no-qurarantine"
brew bundle --verbose

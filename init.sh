#!/usr/bin/env bash

if ! [ -x "$(command -v brew)" ]; then
  echo 'Homebrew is not installed, please go to https://brew.sh/ and install Homebrew' >&2
  exit 1
fi

if ! [ -x "$(command -v pidof)" ]; then
  echo "The package \"pidof\" is not installed but Homebrew is. Installing pidof. Please follow the prompts below" >&2
  brew install pidof
fi

cp -Rv ./Quit\ Atom.app/ /Applications

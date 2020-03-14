# Dotfiles and Things

A checklist for me set up my OSX work station without forgetting anything.

## List
1. Install Google Chrome and sign in.
2. Install Sublime Text
3. Install the [Sublime Text package manager](https://packagecontrol.io/) and the following packages
  * "Alignment"
  * "AutoFileName"
  * "ESLint"
  * "GitGutter"
4. Install iTerm and import the `dom-term.json` profile.
5. Clone this repository and follow the bash instructions.

## Installation

Run the following commands to get up and running!
```
git clone https://github.com/virtualdom/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./setup.sh
```

## What's inside
* Installs the following
  * Xcode
  * [Homebrew](http://brew.sh)
  * MAS (to install App Store apps, like Xcode)
  * Starship
  * Git
* Symlinks the following
  * `~/.gitignore_global`
  * `~/.gitconfig`
  * `~/.zshrc`
  * Sublime settings

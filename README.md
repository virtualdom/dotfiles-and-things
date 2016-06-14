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
4. Open Terminal preferences and import `dom.terminal`. Make it the default terminal profile.
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
  * Git
  * [NVM](https://github.com/creationix/nvm)
  * Node
  * [AVN](https://www.npmjs.com/package/avn)
* Symlinks the following
  * `~/.inputrc`
  * `~/.gitignore_global`
  * `~/.gitconfig`
  * [`~/.git-prompt.sh`](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)
  * `~/.bash_profile`
  * Sublime settings

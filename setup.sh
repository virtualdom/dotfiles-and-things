umask 0022

rm ~/.inputrc
ln -s ${PWD}/.inputrc ~/.inputrc

rm ~/.gitignore_global
ln -s ${PWD}/.gitignore_global ~/.gitignore_global

rm ~/.gitconfig
ln -s ${PWD}/.gitconfig ~/.gitconfig

rm ~/.git-prompt.sh
ln -s ${PWD}/.git-prompt.sh ~/.git-prompt.sh

rm ~/.bash_profile
ln -s ${PWD}/.bash_profile ~/.bash_profile

echo "Installing Xcode"
xcode-select --install

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

if git --version | grep -q 2.7.*; then
  echo "Installing Git"; brew install git;
else
  echo "An awesome version of Git is already installed!";
fi

echo "Installing NVM v0.33.1 (check for an update later!)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
source ~/.bash_profile

echo "Installing Node"
nvm install stable

echo "Installing AVN"
npm install -g avn avn-nvm
avn setup

if [ -d "/Applications/Sublime Text.app" ]; then
  rm "/usr/local/bin/subl";
  ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" "/usr/local/bin/subl";
  if [ -d "/Applications/Sublime Text.app" ]; then
    rm "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings";
    ln -s "${PWD}/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings";
  else
    echo "subl has been set up, but preferences haven't been set."
  fi
else
  echo "Sublime Text 3 isn't installed! Do that and we'll set it up.";
fi

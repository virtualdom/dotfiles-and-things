umask 0022

echo "--> Link gitignore_global"
rm ~/.gitignore_global
ln -s ${PWD}/.gitignore_global ~/.gitignore_global

echo "--> Link gitconfig"
rm ~/.gitconfig
ln -s ${PWD}/.gitconfig ~/.gitconfig

echo "--> Link zshrc"
rm ~/.zshrc
ln -s ${PWD}/.zshrc ~/.zshrc

echo "--> Installing Xcode via xcode-select"
xcode-select --install

echo "--> Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "--> Installing MAS"
brew install mas

echo "--> Installing Xcode from App Store"
mas install 497799835 # install Xcode

echo "--> Accepting XCode license"
sudo xcodebuild -license accept

echo "--> Installing starship"
brew install starship;

echo "--> Installing Git"
brew install git || brew upgrade git;

if [ -d "/Applications/Sublime Text.app" ]; then
  rm "/usr/local/bin/subl";
  ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" "/usr/local/bin/subl";
  if [ -d "/Applications/Sublime Text.app" ]; then
    rm "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings";
    ln -s "${PWD}/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings";
  else
    echo "--> subl has been set up, but preferences haven't been set."
  fi
else
  echo "--> Sublime Text 3 isn't installed! Do that and we'll set it up.";
fi

echo "--> Don't forget to install NVM!"

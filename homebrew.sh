#################################
# Homebrew installer in setup.sh
#################################

if [[ ! -x $(/usr/bin/which -s brew) ]]; then
  echo "Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
fi

brew doctor
brew update
brew -v

echo "Installing git"
brew install git

echo "Essential libraries (readline)"
brew install readline
#brew link openssl
brew link readline

echo "Shell tools"
brew install tmux zsh

echo "rbenv and ruby-build"
brew install rbenv ruby-build

echo "Databases"
brew install mysql

#echo "Install Node.js"
#brew install node

echo "Web tools"
brew install curl
brew install wget --enable-iri

echo "Other tools"
#brew install keychain ssh-copy-id coreutils htop-esx
brew install ctags



##
## Ruby
##

echo "Install Ruby 1.9.3-p286 by rbenv"
CONFIGURE_OPTS="--with-readline-dir=/usr/local" rbenv install 1.9.3-p286

rbenv rehash
rbenv global 1.9.3-p286

source ~/.bash_profile

gem i rbenv-rehash bundler

##
## Vim
##

#install gvim
echo "Getting macvim-kaoriya-20120823.dmg"
wget http://macvim-kaoriya.googlecode.com/files/macvim-kaoriya-20120823.dmg

echo "Installing MacVim on Applications"
hdiutil mount ~/macvim-kaoriya-20120823.dmg
sudo cp -R /Volumes/MacVim-KaoriYa/MacVim.app /Applications/
hdiutil unmount /Volumes/MacVim-KaoriYa/

rm -f ~/macvim-kaoriya-20120823.dmg

#clone vundle(managing vim plugins
echo "Installing Vundle and plugins"
 git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

#install plugins by Vundle
 vim +BundleInstall +qall

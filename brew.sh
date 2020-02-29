# Ask for the administrator password upfront.
#sudo -v
# Keep-alive: update existing `sudo` time stamp until the script has finished.
#while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install brew
if which programname >/dev/null; then
    echo Brew is installed
else
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap caskroom/cask

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install powerlevel9k
brew tap sambadevi/powerlevel9k
brew install powerlevel9k

# v 1brew install macvim --with-override-system-vim
brew install python3
brew install cask
brew install emacs
brew install netcat
brew install telnet
brew install openssl
brew install node
brew install pkg-config
brew install rbenc
brew install readline
brew install wget
brew install gcc
brew install tree
brew install htop
brew install git
brew install gotopt
brew install neofetch

#brew install zsh

brew cask install keeweb
brew cask install google-chrome
brew cask install firefox
brew cask install iterm2
brew cask install spotmenu
brew cask install deluge
brew cask install visual-studio-code
brew cask install sublime-text
brew cask install intellij-idea-ce
#brew cask install atom
brew cask install flux
brew cask install insomnia


brew cask cleanup
brew cleanup

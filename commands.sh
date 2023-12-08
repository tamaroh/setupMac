# ssh
ssh-keygen -t ed25519 -C "tamaroh@gmail.com"
pbcopy < ~/.ssh/id_rsa.pub
# paste on github.com setting

# xcode developer tool
xcode-select --install

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/usr/local/bin/brew shellenv)"') >> /Users/tamaroh/.zprofile
eval "$(/usr/local/bin/brew shellenv)"

brew install --cask google-chrome visual-studio-code zoom discord slack
brew install git gh nvm postgresql
# nvm needs some more setup, read the document after installed

# git
git config --global init.defaultBranch main
git config --global user.name "Tamaroh"
git config --global user.email "tamaroh@gmail.com"

# gh
gh auth login

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
https://github.com/powerline/fonts

# rosetta
/usr/sbin/softwareupdate -install-rosetta -agree-to-license
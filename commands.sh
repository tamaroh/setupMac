

# xcode developer tool
xcode-select --install

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/usr/local/bin/brew shellenv)"') >> /Users/tamaroh/.zprofile
eval "$(/usr/local/bin/brew shellenv)"

brew install --cask google-chrome visual-studio-code zoom discord slack notion
brew install git gh

# edit git config
git config --global init.defaultBranch main
git config --global user.name "Tamaroh"
git config --global user.email "tamaroh@gmail.com"

# gh
gh auth login
# ssh, if set manually
# ssh-keygen -t ed25519 -C "tamaroh@gmail.com"
# pbcopy < ~/.ssh/id_rsa.pub
# paste on github.com setting

# set pass phrase autpmatic
ssh-add
touch ~/.ssh/config
  Host *
  UseKeychain yes

# install nvm (brew is not supported)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.zshrc
nvm install --lts

brew install postgresql@14
brew services start postgresql@14
# edit postgres password setting if needed
psql > alter user tamaroh with password 'pasword';
code /opt/homebrew/var/postgresql@14/pg_hba.conf
trust > scram-sha-256

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# https://github.com/powerline/fonts
brew install font-hackgen-nerd

# rosetta, this may be installed automatically when needed
/usr/sbin/softwareupdate -install-rosetta -agree-to-license



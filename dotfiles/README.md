It's fresh computer time!

# First things
- Sign in
- Check for system updates
- Install and run XCode from App Store
- Remove all icons from Dock, and any unused bloatware
- XCode CLI tools: `xcode-select --install`
- Homebrew: https://brew.sh

# Install packages
```sh
# apps
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask firefox
brew install --cask google-chrome

# utils
brew install z
brew install bat
brew install nvm
brew install tree
brew install ripgrep
brew install diff-so-fancy
```

# Iterm2 setup
- Install the profiles from `iterm_profiles.json`
- Oh My Zsh: https://ohmyz.sh/
- PowerLevel10k: https://github.com/romkatv/powerlevel10k#oh-my-zsh
- Add `zshrc` contents to `~/.zshrc`

# Vim setup
- Copy dotfiles from `vim/` to `~/.vim/`
- Vim-plug: https://github.com/junegunn/vim-plug
- Run `:PlugInstall`

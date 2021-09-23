# dot-files
Dot files needed for setting up my Mac environment..

## Contributing
* The required dotfiles and settings needed to build my personal vorking envionment on each Mac I uses and own.

* I use commits to GitHub to the main branch and keep it updated as best I can to have the latest dtfiles and settings.

### Setting up envionment

#### Required Dependencies

* Xcode Command line tools.
* brew
* packer.nvim
* nvim

**Installing Command Line Tools**
``` bash
xcode-select —install --agree-to-license
```

**Installing [Oh My ZSH](https://ohmyz.sh)**
``` bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**Installing [Brew](https://brew.sh)**
``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### Calling the Brewfile
You need to call the Brewfile in ~/dot-files to install the app and tools from brew.
``` bash
brew bundle -file ~/dot-files/Brewfile
```

**Installing [packer.nvim](https://github.com/wbthomason/packer.nvim)**
``` bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Setup iTerm
* Import the Nord colors.
**Prefernces > Profiles > Colors > Color Presets > Import**

* Import from **~/dot-files/Terminal-Themes/Nord.itermcolors**.

* Import the iTerm Profile.

* Copy files
* Setup Packer
* Setup Coc

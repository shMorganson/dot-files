# dot-files
Dot files needed for setting up my Mac environment..

## Contributing
* The required dotfiles and settings needed to build my personal vorking envionment on each Mac I uses and own.

* I use commits to GitHub to the main branch and keep it updated as best I can to have the latest dtfiles and settings.

### Setting up envionment

#### Required Dependencies

* Xcode Command line tools.
* Brew
* stow
* nvim

**Installing Command Line Tools**
``` bash
xcode-select —install --agree-to-license
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

#### Using Stow
Use stow to put the config files where they belong. 
Example code for Neovim:
``` bash
stow nvim
```

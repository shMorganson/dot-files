# dot-files
Dot files needed for setting up my Mac environment..

## Contributing
* The required dotfiles and settings needed to build my personal vorking envionment on each Mac I uses and own.

* I use commits to GitHub to the main branch and keep it updated as best I can to have the latest dtfiles and settings.

### Setting up envionment

#### Required Dependencies

* Xcode Command line tools.

**MacOS**
``` bash
xcode-select —install --agree-to-license
```

Run the **install.sh** from the repository on the Mac as an admin to setup the enviornemt. The install will setup everything and will call the Brewfile to setup other settings.

The **BrewFile** needs to be in the **dot-files** repo so that it can be used to install everything.

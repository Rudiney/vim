# Install
1. Install/Update VIM and some dependencies using HomBrew: `brew install vim ripgrep lazygit rustup`
1. Clone this repo to ~/.vim: `gh repo clone Rudiney/vim ~/.vim`
1. Create aliases from the default vimrc location to the cloned location: `ln -s ~/.vim/.vimrc ~/.vimrc`
2. Install [VimPlug](https://github.com/junegunn/vim-plug#vim)
   - and them, on vim: `:PlugInstall`

### Rust dependencies for Clap with grep2 (https://sourabhbajaj.com/mac-setup/Rust/)
1. rustup-init
1. https://github.com/liuchengxu/vim-clap/blob/master/INSTALL.md#rust
1. restart the terminal and on vim: `:call clap#installer#build_all()`


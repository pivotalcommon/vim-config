# To Install
(Re)move ~/.vim and ~/.vimrc if you have them already, and run:

    git clone git://github.com/pivotalcommon/vim-config.git ~/.vim
    cd ~/.vim
    git submodule update --init
    ln -s ~/.vim/vimrc ~/.vimrc
    vim +BundleInstall +qall

# tmux support (optional)

If you will be using VIM with tmux for remote pairing or window management,
see the README at [https://github.com/pivotal/tmux-config](https://github.com/pivotal/tmux-config)
    
# Custom "command-t" matcher for CtrlP

We use a custom matcher for CtrlP that makes it act similarly to CommandT. Run the following to install it.

    cd ~/.vim/bundle/matcher
    make && make install # or sudo make install if necessary

If you find yourself needing sudo, you might want to change the ownership of your /usr/local directory to the current user (for single-user machines only):

    sudo chown -R $USER:admin /usr/local
    
# Updating

First, fetch the latest vim-config via Git. You can also rebase or merge your own project-specific customizations.

Then make sure the right version of Vundle is installed:

    cd ~/.vim && git pull --rebase && git submodule sync && git submodule update; cd -

To install/upgrade the necessary bundles:

    vim +BundleInstall +qall # or run :BundleInstall within Vim

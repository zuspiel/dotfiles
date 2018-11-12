Dotfiles (template from anishathalye)
=====================================

To get started, you can [fork][fork] this repository (and probably delete this
README and rename your version to something like just `dotfiles`).

In general, you should be using symbolic links for everything, and using git
submodules whenever possible.

To keep submodules at their proper versions, you could include something like
`git submodule update --init --recursive` in your `install.conf.yaml`.

To upgrade your submodules to their latest versions, you could periodically run
`git submodule update --init --remote`.

[dotbot]: https://github.com/anishathalye/dotbot

Notes
-----

Clone this repo (or even better, fork your own):

   git clone https://github.com/zuspiel/dotfiles.git .dotfiles

then run

    .dotfiles/install

to get everything set up.

Other things to remember for a complete experience:

* ZSH...
** sudo apt-get install zsh
** You'll also want a terminal font with the nerd font patches
* Fast alternative to ack that's 33% quicker to type, too
** sudo apt-get install silversearcher-ag
* fzf is a fuzzy search tool for a lot of places. The following command download the right binary and installs it
** ~/.dotfiles/tools/fzf/install
* 'cat' with colors, alias is 'c'
** pip install -U Pygments

TODO
----

* bashrc is the one from the Ubuntu WSL, not suitable for vogon et al.
* Fix path in zshrc (currently WSL only)

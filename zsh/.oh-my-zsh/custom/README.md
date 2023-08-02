Directory for custom aliases and functions in Oh My Zsh.

## ``alias.zsh``
Contains most aliases I normally use.

## ``mamba.zsh``
Function that creates a switcher for mamba environments. Requires [fzf](https://github.com/junegunn/fzf) and [ripgrep](https://github.com/BurntSushi/ripgrep) to work.
Either call 
```
$ mambas
```
or use ``ctrl + q`` in your terminal to open the switcher.

Note that in earlier versions of ``fzf``, the ``--height`` flag does not recognize the ``~`` option and you have to
set ``--height=<X>%`` manually with a suitable value for ``X``. Also, if you're using ``conda`` instead of ``mamba``, make sure to change the call to ``conda env list`` in
the ``environments`` variable.

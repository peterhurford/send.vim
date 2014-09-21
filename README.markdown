## send.vim
**send.vim** Git add, git commit, git pull, git push all in one command, without leaving vim.

Typing `:S <commit message>` in the vim ex command will automatically run the following commands in your shell:

```
git add (everything in current git repository)
git commit -m '<commit message>'
git pull origin (the current git branch)
git push origin (the current git branch)
```

You can also type just `:S` to commit without writing a commit message.

## Installation

Relies on [send.zsh](https://github.com/robertzk/send.zsh) by Robert Krzyzanowski.  You must first install this zsh plugin (if you use zshell) or add it to your `.bash_profile` in order for this plugin to work.

Once you've done that, you can install this plugin using [pathogen.vim](https://github.com/tpope/vim-pathogen) with the following commands:

```
cd ~/.vim/bundle
git clone https://github.com/peterhurford/send.vim
```

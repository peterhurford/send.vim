**send.vim** Git add, git commit, git pull, git push all in one command, without leaving vim.

Typing `:Send <commit message>` in the vim ex command will automatically run the following commands in your shell:

```
git add (everything in current git repository)
git commit -m '<commit message>'
git pull origin (the current git branch)
git push origin (the current git branch)
```

You can also type just `:Send` to commit without writing a commit message.

## Installation

You've done that, you can install this plugin using [pathogen.vim](https://github.com/tpope/vim-pathogen) with the following commands:

```
cd ~/.vim/bundle
git clone https://github.com/peterhurford/send.vim
```


## Change Defaults

You can change `:Send` to another command by adding `let g:GitSendPrefix = '<my command>'` to your .vimrc.  I like `:S` (`let g:GitSendPrefix = 'S'`).

You also can supress the output given by send with `let g:GitSendSupressOutput = 1` in your .vimrc.

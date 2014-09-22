" send.vim
" Author: Peter Hurford
" Version: 1.0
" Dependency: send.zsh by Robert Krzyzanowski <https://github.com/robertzk/send.zsh>
" Reverse engineered from the git-vim plugin <http://github.com/motemen/git-vim/>

command! -nargs=1 S call GitSend(<q-args>)
function! GitSend(args)
  let args = a:args
  let command = 'source ~/.zshrc && send "' . args . '"'
  let output = system(command)
  echo output
endfunction

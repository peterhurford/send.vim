" send.vim
" Author: Peter Hurford
" Version: 1.0
" Dependency: send.zsh by Robert Krzyzanowski <https://github.com/robertzk/send.zsh>
" Reverse engineered from the git-vim plugin <http://github.com/motemen/git-vim/>

if !exists('g:GitSendPrefix')
  let g:GitSendPrefix = 'Send'
endif

execute 'command! -nargs=1' g:GitSendPrefix 'call GitSend(<q-args>)'

function! GitSend(args)
  let args = a:args
  let shell = system('echo $SHELL')
  if shell =~ 'zsh'
    let command = 'source ~/.zshrc && send "' . args . '"'
  elseif shell =~ 'bash'
    let command = 'source ~/.bash_profile && send "' . args . '"'
  else
    echo "ERROR This plugin only works with zshell or bash."
  endif
  let output = system(command)
  echo output
endfunction

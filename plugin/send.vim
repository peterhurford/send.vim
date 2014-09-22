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
  echo "Working..."
  let args = a:args

  let shell = system('echo $SHELL')
  let shell_good = 0
  if shell =~ 'zsh'
    let source_shell = 'zshrc'
    let shell_good = 1
  elseif shell =~ 'bash'
    let source_shell = 'bash_profile'
    let shell_good = 1
  endif

  if shell_good == 1
    let command = 'source ~/.' . source_shell . ' && send "' . args . '"'
    let output = system(command)
  else
    let output = 'ERROR This plugin only works with bash or zshell'
  endif
  echo output
endfunction

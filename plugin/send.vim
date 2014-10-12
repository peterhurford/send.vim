" send.vim
" Author: Peter Hurford
" Version: 1.0
" Reverse engineered from the git-vim plugin <http://github.com/motemen/git-vim/>


if !exists('g:GitSendPrefix')
  let g:GitSendPrefix = 'Send'
endif

execute 'command! -nargs=1' g:GitSendPrefix 'call GitSend(<q-args>)'

function! GitSend(args)
  let args = a:args
  let command = '! git add "$(git rev-parse --show-toplevel)"; git commit -m "' . args . '"; git push -q origin `git rev-parse --abbrev-ref HEAD` &'
  let output = system(command)
  echo output
endfunction

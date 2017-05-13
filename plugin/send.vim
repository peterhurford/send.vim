" send.vim
" Author: Peter Hurford
" Version: 1.0
" Will let you make git commits from within vim. Doesn't let you push to
" master.
" Reverse engineered from the git-vim plugin <http://github.com/motemen/git-vim/>

if !exists("g:GitSendPrefix")
  let g:GitSendPrefix = "Send"
endif
if !exists("g:GitSendSupressOutput")
  let g:GitSendSupressOutput = 0
endif

execute "command! -nargs=1" g:GitSendPrefix "call GitSend(<q-args>)"

function! GitSend(args)
  let args = a:args
  let command = "git add `git rev-parse --show-toplevel`; git commit -m '" . args . "'; git push -q origin `git rev-parse --abbrev-ref HEAD`"
  let output = system(command)
  if g:GitSendSupressOutput == 0
    echo output
  endif
endfunction

" send.vim
" Author: Peter Hurford
" Version: 1.0
" Dependency: send.zsh by Robert Krzyzanowski
" <https://github.com/robertzk/send.zsh>

command! -nargs=1 S call GitSend(<q-args>)
function! GitSend(args)
  let args = a:args
  execute '! source ~/.zshrc && send ' args
endfunction

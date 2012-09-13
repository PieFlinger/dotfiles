function! s:bashsyntax()
   let line = getline(1)
   let isbash = match(line, '\v^#!.*bash$')
   if isbash != -1
      source ~/.vim/syntax/bash.vim
   endif
endfunction

autocmd! BufRead * nested call s:bashsyntax()

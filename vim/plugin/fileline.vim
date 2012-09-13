if exists('g:loaded_file_line') || (v:version < 700)
   finish
endif
let g:loaded_file_line = 1

function! s:gotoline()
   let file = bufname("%")
   let m = matchlist(file, '\v([^:]*):(\d+)(:(\d+))?')

   if len(m) != 0 && filereadable(m[1])
      let l:bufnr = bufnr("%")
      exec "keepalt edit " . m[1]
      exec ":" . m[2]
      exec ":bwipeout " l:bufnr
      if foldlevel(m[2]) > 0
         exec ":foldopen!"
      endif
      if (m[4] != '')
         exec "normal! " . m[4] . '|'
      endif
   endif
endfunction

autocmd! BufNewFile *:* nested call s:gotoline()

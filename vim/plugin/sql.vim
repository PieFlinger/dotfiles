function s:SetupSQL()
   if !exists("g:loaded_sql_plugin")
      let g:loaded_sql_plugin = 1
   else
      return
   endif

   " Adds backticks to an SQL expression. Turns off gdefault in order to ensure
   " the global substitution flag will work, and restores the previous setting
   " when it's done. The first substitution gets rid of any existing backticks
   " so that we don't double them. The second substitution gobbles up
   " everything that doesn't look like a lowercase identifier (trying to skip
   " over string literals and embedded PHP variables), then grabs the
   " identifier, and replaces it with the same thing, but surrounded by
   " backticks.
   function SQLTicks()
      let gdefault = &l:gdefault
      try
         set nogdefault
         s/`//ge
         s/\C\v((^|\$\i+|'([^']|'')*'|"([^"]|"")*"|`([^`]|``)`|[^a-z_])+)(<[a-z_]+)/\1`\6`/ge
      finally
         let &l:gdefault=gdefault
      endtry
   endfunction

   " The function can be called on a line or a range of lines.
   noremap <Leader>` :call SQLTicks()<CR>
endfunction

autocmd! BufRead *.sql,*.php nested call s:SetupSQL()

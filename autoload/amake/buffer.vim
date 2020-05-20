function! amake#buffer#new(bufname, content) abort
  execute 'new ' . fnameescape(a:bufname)
  " buffer may exist; make it modifiable to delete contents and put new 
  " contents
  setlocal modifiable
  silent %delete _
  call setline(1, a:content)
  setlocal nomodified nomodifiable
  setlocal buftype=nofile bufhidden=wipe
endfunction

" vim: filetype=vim:syntax=vim:ts=4:tw=0:sw=4:sts=4:expandtab:norl:

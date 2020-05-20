" Python runner
function! amake#runner#python#new() abort
  return {'build_args': {f -> ['python', f]}}
endfunction
" vim: filetype=vim:syntax=vim:ts=4:tw=0:sw=4:sts=4:expandtab:norl:

" javascript runner
function! amake#runner#javascript#new() abort
  return {'build_args': {f -> ['node', f]}}
endfunction
" vim: filetype=vim:syntax=vim:ts=4:tw=0:sw=4:sts=4:expandtab:norl:

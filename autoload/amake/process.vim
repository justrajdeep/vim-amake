function! amake#process#call(args) abort
  if !has('lambda')
    finish
  endif
  let args = map(
        \ a:args[:],
        \ { _, v -> shellescape(v) }
        \ )
  let output = system(join(args))
  return split(output, '\r\?\n')
endfunction

" vim: filetype=vim:syntax=vim:ts=4:tw=0:sw=4:sts=4:expandtab:norl:
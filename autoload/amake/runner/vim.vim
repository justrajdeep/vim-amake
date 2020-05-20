" vim runner
function! amake#runner#vim#new() abort
    return {'build_args': funcref('s:build_args')}
endfunction

function! s:build_args(filename) abort
    let cmd = printf(
                \ 'source %s',
                \ fnameescape(a:filename)
                \ )
    return [
                \ 'nvim', '-n', '--headless',
                \ '--cmd',  cmd, '--cmd', 'quit'
                \ ]
endfunction

" vim: filetype=vim:syntax=vim:ts=4:tw=0:sw=4:sts=4:expandtab:norl:

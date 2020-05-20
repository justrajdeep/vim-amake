function! amake#runner#new(filetype) abort
    " create an autoload function name
    " Replace a non word character to _ then use it as a namespace in amake#runner#{namespace}#new
    let namespace = substitute(a:filetype, '\W', '_', 'g')
    let funcname = printf(
                \ 'amake#runner#%s#new',
                \ namespace
                \ )
    " vim throws E117 with a function name so catch that error with 
    " a particular function name and re-throw a new error with user-friendly 
    " message
    try
        return call(funcname, [])
    catch /:E117: [^:]\+: amake#runner#[^#]\+#new/
        throw printf(
                    \ 'amake: Runner is not found: %s',
                    \ a:filetype
                    \ )
    endtry
endfunction

function! amake#runner#run(runner, filename) abort
    let args = a:runner.build_args(a:filename)
    let output = amake#process#call(args)
    return {
                \ 'args': args,
                \ 'output': output
                \}
endfunction

" vim: filetype=vim:syntax=vim:ts=4:tw=0:sw=4:sts=4:expandtab:norl:
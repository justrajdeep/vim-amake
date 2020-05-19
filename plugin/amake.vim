if exists('g:loaded_amake')
  finish
endif
let g:loaded_amake = 1

" execute an external program and wait
" open a new buffer with results
" inferior copy of thinca/vim-quickrun
" ---- STEPS
" Function to invoke an external program
" function to create a runner of a particular filetype
" runner to build command to execute a script file
" function to open a new buffer with particular contents
" tie all up together

command! Amake call amake#hello_world()

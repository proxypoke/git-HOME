setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent

let g:python="python2"
let g:pydoc="pydoc2"
let g:pymode_rope_always_show_complete_menu = 1
let g:pymode_lint_checker = 'pyflakes,pep8,mccabe'

" why the fuck does this get unset?
set fo+=t

"============================================================================
"File:        tailor.vim
"Description: Syntax checking plugin for syntastic.vim
"
"============================================================================

let s:here =  shellescape(expand('<sfile>:p:h') . '/lib')
function! SyntaxCheckers_ruby_GetLocList()
    let makeprg = 'RUBYLIB='.s:here.' tailor --format=vim  '.shellescape(expand('%'))
    let errorformat = '%f:%l:%c:%m'
    return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat })
endfunction

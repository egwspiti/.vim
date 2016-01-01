setl iskeyword+=?  " Make ?s part of words
setl sw=2 sts=2 et
setl foldmethod=expr
setl foldexpr=getline(v:lnum)=~'^\\s*#'
setl formatoptions-=ro
setl relativenumber
setl foldtext=VimFoldText()
setl foldminlines=0

setl sw=2 sts=2 et
setl foldmethod=expr
setl foldtext=VimFoldText()
setl foldminlines=0
setl foldexpr=getline(v:lnum)=~'^\\s*#'

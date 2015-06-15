""""""""""""""""""""" HIndent """"""""""""""""""""""
"set g:hindent_style = "chris-done"

""""""""""""""""""""" Neco-GHC / Neocomplete """"""""""""""""""""""
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

""""""""""""""""""""" Haskell-VIM """"""""""""""""""""""
let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1
let g:haskell_enable_arrowsyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
let g:haskell_enable_static_pointers = 1
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1

""""""""""""""""""""" HaskellConcealPlus """"""""""""""""""""""
" 'q' option to disable concealing of scientific constants (e.g. π).
" '℘' option to disable concealing of powerset function
" '𝐒' option to disable String type to 𝐒 concealing
" '𝐓' option to disable Text type to 𝐓 concealing
" '𝐄' option to disable Either/Right/Left to 𝐄/𝑅/𝐿 concealing
" '𝐌' option to disable Maybe/Just/Nothing to 𝐌/𝐽/𝑁 concealing
" 'A' option to not try to preserve indentation.
" 's' option to disable space consumption after ∑,∏,√ and ¬ functions.
" '*' option to enable concealing of asterisk with '⋅' sign.
" 'x' option to disable default concealing of asterisk with '×' sign.
" 'E' option to enable ellipsis concealing with ‥  (two dot leader).
" 'e' option to disable ellipsis concealing with … (ellipsis sign).
" '⇒' option to disable `implies` concealing with ⇒
" '⇔' option to disable `iff` concealing with ⇔
" 'r' option to disable return (η) and join (µ) concealing.
" 'b' option to disable bind (left and right) concealing
" 'f' option to enable formal (★) right bind concealing
" 'c' option to enable encircled b/d (ⓑ/ⓓ) for right and left binds.
" 'h' option to enable partial concealing of binds (e.g. »=).
" 'C' option to enable encircled 'm' letter ⓜ concealing for fmap.
" 'l' option to disable fmap/lift concealing with ↥.
" '↱' option to disable mapM/forM concealing with ↱/↰
" 'w' option to disable 'where' concealing with "due to"/∵ symbol.
" '-' option to disable subtract/(-) concealing with ⊟.
" 'I' option to enable alternative ':+' concealing with with ⨢.
" 'i' option to disable default concealing of ':+' with ⅈ.
" 'R' option to disable realPart/imagPart concealing with ℜ/ℑ.
" 'T' option to enable True/False constants concealing with bold 𝐓/𝐅.
" 't' option to disable True/False constants concealing with italic 𝑇/𝐹.
" 'B' option to disable Bool type to 𝔹 concealing
" 'Q' option to disable Rational type to ℚ concealing.
" 'Z' option to disable Integer type to ℤ concealing.
" '𝔻' option to disable Double type to 𝔻 concealing
" '1' option to disable numeric superscripts concealing, e.g. x².
" 'a' option to disable alphabet superscripts concealing, e.g. xⁿ.
"let g:hscoptions = "𝐒𝐓𝐄𝐌xr↱RtB𝔻"
let g:hscoptions = "q℘𝐒𝐓𝐄𝐌xrl↱-iRtBQZ𝔻"

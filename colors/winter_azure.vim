set background=dark
syntax reset

let g:colors_name='winter_azure'
let colors_name='winter_azure'

" palette
"

let s:azure_l  = "#D7DBDB"
let s:azure_n  = "#BCC3C3"
let s:azure_d  = "#A1AAAA"
let s:azure_dd = "#3C4343"
let s:warm_d   = "#FF7C4D"
let s:warm_n   = "#FFA280"
let s:warm_l   = "#FFC7D3"
let s:bg       = "#242828"
let s:fg       = s:azure_n
let s:none     = "NONE"
let s:cursor_line = "#313640"
let s:warning  = "#FF3030"
let s:yellow   = "#FFD700"

function! s:h(group, fg, bg, attr)
  if a:attr != ""
    exec "hi " . a:group . " guifg=" . a:fg . " guibg=" . a:bg . " gui=" . a:attr
  else
    exec "hi " . a:group . " guifg=" . a:fg . " guibg=" . a:bg . " gui=" . s:none
  endif
endfun

call s:h("Normal" , s:fg , s:bg , "")
call s:h("NonText" , s:fg , s:none , "")

call s:h("Cursor" , s:bg , s:azure_n ,"")
call s:h("CursorColumn" , s:none , s:cursor_line , "")
call s:h("CursorLine" , s:none , s:cursor_line , "")

call s:h("LineNr" , s:azure_d , s:bg , "")
call s:h("CursorLineNr" , s:warm_n , s:bg , "")

"call s:h("DiffAdd",)
"call s:h("DiffChange", )
"call s:h("DiffDelete", s:warning , s:none , "")
"call s:h("DiffText", )
"call s:h("IncSearch", s:bg, s:yellow, "")
"call s:h("Search", s:bg, s:yellow, "")

call s:h("ErrorMsg", s:warning, s:none, "")
call s:h("ModeMsg", s:fg, s:none, "")
call s:h("MoreMsg", s:fg, s:none, "")
call s:h("WarningMsg", s:warning, s:none, "")
call s:h("Question", s:fg, s:none, "")
"
call s:h("Pmenu", s:fg, s:azure_dd, "")
call s:h("PmenuSel", s:warm_d, s:azure_dd, "")
call s:h("PmenuSbar", s:none, s:azure_dd, "")
call s:h("PmenuThumb", s:none, s:azure_dd, "")
"
call s:h("SpellBad", s:warning, s:none, "")
call s:h("SpellCap", s:yellow, s:none, "")
call s:h("SpellLocal", s:yellow, s:none, "")
call s:h("SpellRare", s:yellow, s:none, "")

"
"call s:h("StatusLine", s:warm_d, s:azure_dd, "")
"call s:h("StatusLineNC", s:azure_dd, s:azure_dd, "")
"call s:h("TabLine", s:comment_fg, s:cursor_line, "")
"call s:h("TabLineFill", s:comment_fg, s:cursor_line, "")
"call s:h("TabLineSel", s:fg, s:bg, "")
"
"call s:h("Visual", "", s:selection, "")
"call s:h("VisualNOS", "", s:selection, "")
"
"call s:h("ColorColumn", "", s:color_col, "")
"call s:h("Conceal", s:fg, "", "")
"call s:h("Directory", s:blue, "", "")
"call s:h("VertSplit", s:vertsplit, s:vertsplit, "")
"call s:h("Folded", s:fg, "", "")
"call s:h("FoldColumn", s:fg, "", "")
call s:h("SignColumn", s:warning , s:bg, "")
"
"call s:h("MatchParen", s:blue, "", "underline")
"call s:h("SpecialKey", s:fg, "", "")
"call s:h("Title", s:green, "", "")
"call s:h("WildMenu", s:fg, "", "")
"

call s:h("Comment" , s:azure_dd , s:none , "")
call s:h("Constant" , s:warm_d , s:none , "")

" literal
call s:h("String" , s:warm_n , s:none , "")
call s:h("Character" , s:warm_n , s:none , "")
call s:h("Number" , s:warm_d , s:none , "")
call s:h("Boolean" , s:warm_d , s:none , "")
call s:h("Float" , s:warm_d , s:none , "")


call s:h("Identifier" , s:warm_d , s:none , "")
call s:h("Function" , s:warm_n , s:none , "")

call s:h("Statement" , s:azure_d , s:none , "")
call s:h("Conditional" , s:azure_d , s:none , "")
call s:h("Repeat" , s:azure_d , s:none , "")
call s:h("Label" , s:azure_d , s:none , "")
call s:h("Operator" , s:warm_n , s:none , "")
call s:h("Keyword" , s:azure_l , s:none , "")
call s:h("Exception" , s:azure_l , s:none , "")

call s:h("PreProc" , s:azure_l , s:none , "")
call s:h("Include" , s:azure_d , s:none , "")
call s:h("Define" , s:azure_d , s:none , "")
call s:h("Macro" , s:azure_d , s:none , "")
call s:h("PreCondit" , s:azure_d , s:none , "")

call s:h("Type" , s:azure_l , s:none , "")
call s:h("StorageClass" , s:azure_l , s:none , "")
call s:h("Structure" , s:azure_l , s:none , "")
call s:h("Typedef" , s:azure_l , s:none , "")
call s:h("Special" , s:warm_d , s:none , "")
call s:h("SpecialChar" , s:warm_d , s:none , "")
call s:h("Tag" , s:warm_d , s:none , "")
call s:h("Delimiter" , s:warm_d , s:none , "")
call s:h("SpecialComment" , s:warm_d , s:none , "")
call s:h("Debug" , s:warm_d , s:none , "")
call s:h("Underlined" , s:warm_d , s:none , "")
call s:h("Ignore" , s:warm_d , s:none , "")
call s:h("Error" , s:warning , s:none , "")
call s:h("Todo" , s:warm_d , s:none , "")

" Plugins {
" GitGutter
"call s:h("GitGutterAdd", s:green, s:gutter_bg, "")
"call s:h("GitGutterDelete", s:red, s:gutter_bg, "")
"call s:h("GitGutterChange", s:yellow, s:gutter_bg, "")
"call s:h("GitGutterChangeDelete", s:red, s:gutter_bg, "")
"" Fugitive
"call s:h("diffAdded", s:green, "", "")
"call s:h("diffRemoved", s:red, "", "")
"" }
"
"
"" Git {
"call s:h("gitcommitComment", s:comment_fg, "", "")
"call s:h("gitcommitUnmerged", s:red, "", "")
"call s:h("gitcommitOnBranch", s:fg, "", "")
"call s:h("gitcommitBranch", s:purple, "", "")
"call s:h("gitcommitDiscardedType", s:red, "", "")
"call s:h("gitcommitSelectedType", s:green, "", "")
"call s:h("gitcommitHeader", s:fg, "", "")
"call s:h("gitcommitUntrackedFile", s:cyan, "", "")
"call s:h("gitcommitDiscardedFile", s:red, "", "")
"call s:h("gitcommitSelectedFile", s:green, "", "")
"call s:h("gitcommitUnmergedFile", s:yellow, "", "")
"call s:h("gitcommitFile", s:fg, "", "")
"hi link gitcommitNoBranch gitcommitBranch
"hi link gitcommitUntracked gitcommitComment
"hi link gitcommitDiscarded gitcommitComment
"hi link gitcommitSelected gitcommitComment
"hi link gitcommitDiscardedArrow gitcommitDiscardedFile
"hi link gitcommitSelectedArrow gitcommitSelectedFile
"hi link gitcommitUnmergedArrow gitcommitUnmergedFile
" }

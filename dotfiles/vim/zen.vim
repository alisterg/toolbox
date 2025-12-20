" Name:       zen.vim
" Version:    0.2.0
" License:    The MIT License (MIT)
"
" A minimal colorscheme for Vim that only puts emphasis on the paramount.
"
" Based on the pencil and off colorschemes:
" https://github.com/reedes/vim-colors-pencil
" https://github.com/reedes/vim-colors-off

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='paramount'

" Core palette
let s:black           = { "gui": "#000000", "cterm": "232" }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:actual_white    = { "gui": "#FFFFFF", "cterm": "231" }

" Grays
let s:subtle_black    = { "gui": "#303030", "cterm": "236" }
let s:light_black     = { "gui": "#262626", "cterm": "235" }
let s:lighter_black   = { "gui": "#4E4E4E", "cterm": "239" }
let s:medium_gray     = { "gui": "#767676", "cterm": "243" }
let s:light_gray      = { "gui": "#A8A8A8", "cterm": "248" }
let s:lighter_gray    = { "gui": "#C6C6C6", "cterm": "251" }
let s:lightest_gray   = { "gui": "#fafafa", "cterm": "255" }

" Colors
let s:darker_blue     = { "gui": "#1D4ED8", "cterm": "31"  }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "32"  }
let s:orange          = { "gui": "#D75F5F", "cterm": "167" }
let s:dark_red        = { "gui": "#C30771", "cterm": "125" }
let s:light_red       = { "gui": "#E32791", "cterm": "168" }
let s:dark_green      = { "gui": "#10A778", "cterm": "36"  }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "79"  }
let s:dark_purple     = { "gui": "#923D8B", "cterm": "134" }
let s:darker_purple   = { "gui": "#6144b3", "cterm": "134" }
let s:light_purple    = { "gui": "#a790d5", "cterm": "140" }
let s:dark_yellow     = { "gui": "#A89C14", "cterm": "142" }
let s:light_yellow    = { "gui": "#ffff87", "cterm": "228" }

let s:background = &background

if &background == "dark"
  let s:bg              = s:black
  let s:bg_subtle       = s:lighter_black
  let s:bg_very_subtle  = s:subtle_black
  let s:norm            = s:lighter_gray
  let s:norm_subtle     = s:medium_gray
  let s:purple          = s:light_purple
  let s:darker_purple   = s:dark_purple
  let s:green           = s:light_green
  let s:red             = s:light_red
  let s:yellow          = s:light_yellow
  let s:darker_blue     = s:dark_blue
else
  let s:bg              = s:lightest_gray
  let s:bg_subtle       = s:lighter_gray
  let s:bg_very_subtle  = s:actual_white
  let s:norm            = s:light_black
  let s:norm_subtle     = s:medium_gray
  let s:purple          = s:dark_purple
  let s:green           = s:dark_green
  let s:red             = s:dark_red
  let s:yellow          = s:dark_yellow
endif

" Highlight function (from vim-hemisu)
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" Base
call s:h("Normal",        {"fg": s:norm})
" call s:h("Normal",        {"bg": s:bg, "fg": s:norm})

" Restore background value in case changing Normal changed it
if &background != s:background
   execute "set background=" . s:background
endif

call s:h("Cursor",        {"bg": s:purple, "fg": s:norm})
call s:h("Comment",       {"fg": s:dark_blue, "cterm": "italic", "gui": "italic"})

call s:h("DocComment", {"fg": s:darker_purple,})
hi! link rustCommentLineDoc   DocComment
hi! link typescriptDocComment DocComment

call s:h("Method", {"fg": s:darker_purple})
hi! link rustFuncName       Method
hi! link zshKSHFunction     Method
hi! link goDeclaration      Method
hi! link pythonFunction     Method
hi! link typescriptFuncName Method

" Constants
call s:h("Constant",      {"fg": s:purple})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant

" Identifiers
hi! link Identifier                    Normal
hi! link Function                      Identifier
hi! link typescriptStringMethod        Identifier
hi! link typescriptArrayMethod         Identifier
hi! link typescriptES6SetMethod        Identifier
hi! link typescriptCall                Identifier
hi! link typescriptFuncCallArg         Identifier
hi! link typescriptArrowFuncArg        Identifier
hi! link typescriptConsoleMethod       Identifier
hi! link typescriptObjectLabel         Identifier
hi! link typescriptDestructureVariable Identifier

" Statements
call s:h("Statement",     {"fg": s:norm_subtle, "cterm": "italic", "gui": "italic"})
hi! link Conditional      Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h("Operator",      {"fg": s:norm, "cterm": "bold", "gui": "bold"})

" Preprocessor
call s:h("PreProc",       {"fg": s:norm_subtle})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

" Types
call s:h("Type",          {"fg": s:darker_blue})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

" Special
call s:h("Special",       {"fg": s:norm_subtle, "gui": "italic"})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

" Misc syntax
call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:actual_white, "bg": s:red, "cterm": "bold"})
call s:h("Todo",          {"fg": s:orange, "gui": "underline", "cterm": "underline"})

" UI elements
call s:h("SpecialKey",    {"fg": s:green})
call s:h("NonText",       {"fg": s:medium_gray})
call s:h("Directory",     {"fg": s:dark_blue})
call s:h("ErrorMsg",      {"fg": s:red})
call s:h("IncSearch",     {"bg": s:yellow, "fg": s:light_black})
call s:h("Search",        {"bg": s:green, "fg": s:light_black})
call s:h("MoreMsg",       {"fg": s:medium_gray, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg          MoreMsg
call s:h("LineNr",        {"fg": s:bg_subtle})
call s:h("CursorLineNr",  {"fg": s:purple, "bg": s:bg_very_subtle})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:bg_very_subtle})
call s:h("StatusLineNC",  {"bg": s:bg_very_subtle, "fg": s:medium_gray})
call s:h("VertSplit",     {"bg": s:bg_very_subtle, "fg": s:bg_very_subtle})
call s:h("Title",         {"fg": s:dark_blue})
call s:h("Visual",        {"fg": s:norm, "bg": s:light_purple})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:yellow})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:norm_subtle})
call s:h("FoldColumn",    {"fg": s:bg_subtle})
call s:h("SignColumn",    {"fg": s:green, "bg": s:bg})

" Diff
call s:h("DiffAdd",       {"fg": s:green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:dark_yellow})
call s:h("DiffText",      {"fg": s:dark_blue})

" Spelling
if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:red})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:green})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:purple})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:dark_green})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:green})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:purple})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:dark_green})
endif

" Popup menu
call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:purple})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})

" Tabs
call s:h("TabLine",       {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("TabLineSel",    {"fg": s:purple, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:bg_very_subtle})

" Cursor
call s:h("CursorColumn",  {"bg": s:bg_very_subtle})
call s:h("CursorLine",    {"bg": s:bg_very_subtle})
call s:h("ColorColumn",   {"bg": s:bg_subtle})

call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})
call s:h("qfLineNr",      {"fg": s:medium_gray})

" HTML
call s:h("htmlH1",        {"bg": s:light_gray, "fg": s:light_black})
hi! link htmlH2           htmlH1
hi! link htmlH3           htmlH1
hi! link htmlH4           htmlH1
hi! link htmlH5           htmlH1
hi! link htmlH6           htmlH1

" Diagnostics (Syntastic, Neomake, ALE)
call s:h("SyntasticWarningSign", {"fg": s:yellow})
call s:h("SyntasticWarning",     {"bg": s:yellow, "fg": s:black, "gui": "bold", "cterm": "bold"})
call s:h("SyntasticErrorSign",   {"fg": s:red})
call s:h("SyntasticError",       {"bg": s:red, "fg": s:white, "gui": "bold", "cterm": "bold"})

hi! link NeomakeWarningSign      SyntasticWarningSign
hi! link NeomakeErrorSign        SyntasticErrorSign
hi! link ALEWarningSign          SyntasticWarningSign
hi! link ALEErrorSign            SyntasticErrorSign

" Git gutter / Signify
hi! link SignifySignAdd          LineNr
hi! link SignifySignDelete       LineNr
hi! link SignifySignChange       LineNr
call s:h("GitGutterAdd",          {"fg": s:green})
call s:h("GitGutterChange",       {"fg": s:yellow})
call s:h("GitGutterDelete",       {"fg": s:red})
call s:h("GitGutterChangeDelete", {"fg": s:red})


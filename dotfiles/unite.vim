" unite.vim — blog palette grafted onto the industry structure
" Bold white statements, teal accents, grey prose, near-black background

set background=dark
hi clear
if exists('syntax_on') | syntax reset | endif
let g:colors_name = 'unite'

" Palette
"   bg:           #030608   (--bg)
"   bg-raised:    #0a1220   (--bg-card)
"   text:         #CDD9E5   (--text,       slightly off-white)
"   muted:        #8899A6   (--text-muted, mid grey)
"   subtle:       #4A5A6A   (--text-subtle, dim grey / comments)
"   teal:         #00AAFF   (--electric,   primary accent)
"   teal-light:   #5ABEFF   (--electric-light)
"   amber:        #FFB800   (--amber,      warnings only)

hi! link Float          Number
hi! link LineNrAbove    LineNr
hi! link LineNrBelow    LineNr
hi! link MessageWindow  Pmenu
hi! link Number         Constant
hi! link PopupNotification Todo
hi! link StatusLineTerm   StatusLine
hi! link StatusLineTermNC StatusLineNC

hi Normal         guifg=#CDD9E5 guibg=NONE    gui=NONE
hi ColorColumn    guifg=NONE    guibg=#0a1220 gui=NONE
hi Conceal        guifg=#4A5A6A guibg=NONE    gui=NONE
hi Cursor         guifg=#030608 guibg=#CDD9E5 gui=NONE
hi CursorColumn   guifg=NONE    guibg=#0a1220 gui=NONE
hi CursorLine     guifg=NONE    guibg=#070d14 gui=NONE
hi CursorLineNr   guifg=#00AAFF guibg=NONE    gui=bold
hi EndOfBuffer    guifg=#0a1220 guibg=#030608 gui=NONE
hi FoldColumn     guifg=#00AAFF guibg=#071c22 gui=NONE
hi Folded         guifg=#00afaf guibg=#303030 gui=NONE
hi LineNr         guifg=#4A5A6A guibg=NONE    gui=NONE
hi MatchParen     guifg=#030608 guibg=#00AAFF gui=bold
hi NonText        guifg=#1a3040 guibg=NONE    gui=NONE
hi SignColumn     guifg=#4A5A6A guibg=NONE    gui=NONE
hi SpecialKey     guifg=#1a3040 guibg=NONE    gui=NONE
hi Whitespace     guifg=#1a3040 guibg=NONE    gui=NONE

hi StatusLine     guifg=#030608 guibg=#CDD9E5 gui=bold
hi StatusLineNC   guifg=#030608 guibg=#4A5A6A gui=NONE
hi TabLine        guifg=#8899A6 guibg=#0a1220 gui=NONE
hi TabLineFill    guifg=NONE    guibg=#070d14 gui=NONE
hi TabLineSel     guifg=#ffffff guibg=#030608 gui=bold
hi VertSplit      guifg=#0a1220 guibg=#0a1220 gui=NONE
hi WinSeparator   guifg=#0a1220 guibg=NONE    gui=NONE

hi Pmenu          guifg=#CDD9E5 guibg=#0a1220 gui=NONE
hi PmenuMatch     guifg=#00AAFF guibg=#0a1220 gui=NONE
hi PmenuMatchSel  guifg=#00AAFF guibg=#00AAFF gui=NONE
hi PmenuSbar      guifg=NONE    guibg=#030608 gui=NONE
hi PmenuSel       guifg=#030608 guibg=#00AAFF gui=bold
hi PmenuThumb     guifg=NONE    guibg=#4A5A6A gui=NONE

hi Visual         guifg=#CDD9E5 guibg=#0d2a3d gui=NONE
hi VisualNOS      guifg=#CDD9E5 guibg=#0d2a3d gui=NONE
hi Search         guifg=#000000 guibg=#ffff00 gui=NONE
hi IncSearch      guifg=#5fd75f guibg=#000000 gui=NONE
hi CurSearch      guifg=#000000 guibg=#5fd75f gui=NONE
hi WildMenu       guifg=#030608 guibg=#00AAFF gui=NONE
hi QuickFixLine   guifg=#030608 guibg=#5ABEFF gui=NONE

hi Directory      guifg=#00AAFF guibg=NONE    gui=NONE
hi Title          guifg=#ffffff guibg=NONE    gui=bold
hi ModeMsg        guifg=#ffffff guibg=NONE    gui=bold
hi MoreMsg        guifg=#00AAFF guibg=NONE    gui=bold
hi Question       guifg=#00AAFF guibg=NONE    gui=bold
hi ErrorMsg       guifg=#FFB800 guibg=NONE    gui=bold
hi WarningMsg     guifg=#FFB800 guibg=NONE    gui=NONE

hi DiffAdd        guifg=#ffffff guibg=#0a2a18 gui=NONE
hi DiffChange     guifg=#ffffff guibg=#091a2a gui=NONE
hi DiffDelete     guifg=#8899A6 guibg=#1a1a1a gui=NONE
hi DiffText       guifg=#000000 guibg=#CDD9E5 gui=NONE

hi SpellBad       guifg=#FFB800 guibg=NONE    gui=undercurl guisp=#FFB800
hi SpellCap       guifg=#5ABEFF guibg=NONE    gui=undercurl guisp=#5ABEFF
hi SpellLocal     guifg=#8899A6 guibg=NONE    gui=undercurl guisp=#8899A6
hi SpellRare      guifg=#8899A6 guibg=NONE    gui=undercurl guisp=#8899A6

hi DiagnosticError guifg=#C084FC guibg=NONE gui=NONE
hi DiagnosticWarn  guifg=#A855F7 guibg=NONE gui=NONE
hi DiagnosticInfo  guifg=#00AAFF guibg=NONE gui=NONE
hi DiagnosticHint  guifg=#4A5A6A guibg=NONE gui=NONE
hi DiagnosticUnderlineError guifg=NONE guibg=NONE gui=undercurl guisp=#C084FC
hi DiagnosticUnderlineWarn  guifg=NONE guibg=NONE gui=undercurl guisp=#A855F7

hi GitSignsAdd    guifg=#00AAFF guibg=NONE gui=NONE
hi GitSignsChange guifg=#8899A6 guibg=NONE gui=NONE
hi GitSignsDelete guifg=#4A5A6A guibg=NONE gui=NONE

" ── Syntax ────────────────────────────────────────────────────────────────────
" Bold white — the "heading" feel from the blog
hi Statement    guifg=#ffffff guibg=NONE gui=bold cterm=bold
hi Keyword      guifg=#ffffff guibg=NONE gui=bold cterm=bold
hi Conditional  guifg=#ffffff guibg=NONE gui=bold cterm=bold
hi Repeat       guifg=#ffffff guibg=NONE gui=bold cterm=bold
hi Exception    guifg=#ffffff guibg=NONE gui=bold cterm=bold
hi Label        guifg=#CDD9E5 guibg=NONE gui=NONE
hi Operator     guifg=#8899A6 guibg=NONE gui=NONE

" Teal — functions and types (primary accent, --electric)
hi Function     guifg=#00AAFF guibg=NONE gui=NONE
hi Type         guifg=#00AAFF guibg=NONE gui=bold
hi StorageClass guifg=#00AAFF guibg=NONE gui=bold
hi Structure    guifg=#00AAFF guibg=NONE gui=bold
hi Typedef      guifg=#00AAFF guibg=NONE gui=bold
hi Tag          guifg=#00AAFF guibg=NONE gui=NONE

" Violet — numbers only
hi Number       guifg=#C084FC guibg=NONE gui=NONE
hi Float        guifg=#C084FC guibg=NONE gui=NONE

" Green — strings (industry cyan), constants/booleans, preprocessor/types
hi String       guifg=#00ffff guibg=NONE gui=NONE
hi Character    guifg=#00ffff guibg=NONE gui=NONE
hi Constant     guifg=#00ff00 guibg=NONE gui=NONE
hi Boolean      guifg=#00ff00 guibg=NONE gui=NONE
hi PreProc      guifg=#00ff00 guibg=NONE gui=NONE
hi Include      guifg=#00ff00 guibg=NONE gui=NONE
hi Define       guifg=#00ff00 guibg=NONE gui=NONE
hi Macro        guifg=#00ff00 guibg=NONE gui=NONE
hi PreCondit    guifg=#00ff00 guibg=NONE gui=NONE
hi Special      guifg=#5fd75f guibg=NONE gui=NONE
hi SpecialChar  guifg=#5fd75f guibg=NONE gui=NONE

hi Identifier   guifg=#CDD9E5 guibg=NONE gui=NONE
hi Delimiter    guifg=#4A5A6A guibg=NONE gui=NONE

" Very dim — comments recede like --text-subtle
hi Comment        guifg=#8B8B3A guibg=NONE gui=NONE
hi SpecialComment guifg=#8B8B3A guibg=NONE gui=italic

hi Error        guifg=#C084FC guibg=NONE    gui=bold
hi Todo         guifg=#ffffff guibg=#A855F7 gui=bold
hi Underlined   guifg=#5ABEFF guibg=NONE    gui=underline
hi Ignore       guifg=NONE    guibg=NONE    gui=NONE
hi lCursor      guifg=#030608 guibg=#CDD9E5 gui=NONE
hi ToolbarLine  guifg=NONE    guibg=#0a1220 gui=NONE

" ── Markdown ─────────────────────────────────────────────────────────────────
hi markdownH1           guifg=#ffffff guibg=NONE gui=bold
hi markdownH2           guifg=#ffffff guibg=NONE gui=bold
hi markdownH3           guifg=#CDD9E5 guibg=NONE gui=bold
hi markdownH4           guifg=#8899A6 guibg=NONE gui=bold
hi markdownH1Delimiter  guifg=#00AAFF guibg=NONE gui=NONE
hi markdownH2Delimiter  guifg=#00AAFF guibg=NONE gui=NONE
hi markdownCode         guifg=#5fd75f guibg=NONE gui=NONE
hi markdownCodeBlock    guifg=#5fd75f guibg=NONE gui=NONE
hi markdownLinkText     guifg=#00AAFF guibg=NONE gui=underline
hi markdownUrl          guifg=#4A5A6A guibg=NONE gui=NONE
hi markdownBold         guifg=#CDD9E5 guibg=NONE gui=bold
hi markdownItalic       guifg=#8899A6 guibg=NONE gui=italic
hi markdownBlockquote   guifg=#4A5A6A guibg=NONE gui=italic

" ── HTML ─────────────────────────────────────────────────────────────────────
hi htmlTag          guifg=#00ff00 guibg=NONE gui=NONE   " opening <tag>  — industry Function
hi htmlEndTag       guifg=#ff00ff guibg=NONE gui=NONE   " closing </tag> — industry Identifier
hi link htmlTagName Statement
hi htmlArg          guifg=#00ff00 guibg=NONE gui=NONE
hi link htmlString  String
hi link htmlValue   String
hi htmlSpecialChar  guifg=#5fd75f guibg=NONE gui=NONE
hi htmlComment      guifg=#8B8B3A guibg=NONE gui=NONE
hi htmlCommentPart  guifg=#8B8B3A guibg=NONE gui=NONE

" ── XML ──────────────────────────────────────────────────────────────────────
hi xmlTag           guifg=#00ff00 guibg=NONE gui=NONE
hi xmlEndTag        guifg=#ff00ff guibg=NONE gui=NONE
hi link xmlTagName  Statement
hi xmlAttrib        guifg=#00ff00 guibg=NONE gui=NONE
hi link xmlString   String
hi xmlComment       guifg=#8B8B3A guibg=NONE gui=NONE
hi xmlCommentPart   guifg=#8B8B3A guibg=NONE gui=NONE
hi xmlCommentStart  guifg=#8B8B3A guibg=NONE gui=NONE

" ── CSS ──────────────────────────────────────────────────────────────────────
hi link cssClassName Statement
hi link cssIdentifier Statement

" ── Treesitter ────────────────────────────────────────────────────────────────
" hi link @keyword            Keyword
" hi link @keyword.function   Keyword
" hi link @keyword.return     Keyword
" hi link @keyword.operator   Operator
" hi link @function           Function
" hi link @function.builtin   Function
" hi link @function.call      Function
" hi link @function.method    Function
" hi link @function.method.call Function
" hi link @type               Type
" hi link @type.builtin       Type
" hi link @string             String
" hi link @string.escape      SpecialChar
" hi link @number             Number
" hi link @float              Float
" hi link @boolean            Boolean
" hi link @constant           Constant
" hi link @constant.builtin   Constant
" hi link @variable           Identifier
" hi link @variable.builtin   Special
" hi link @parameter          Identifier
" hi link @field              Identifier
" hi link @property           Identifier
" hi link @operator           Operator
" hi link @punctuation.bracket Delimiter
" hi link @punctuation.delimiter Delimiter
" hi link @comment            Comment
" hi link @comment.documentation SpecialComment
" hi link @tag                Tag
" hi link @tag.attribute      Identifier
" hi link @tag.delimiter      Delimiter
" 
" hi @markup.heading.1.markdown guifg=#ffffff guibg=NONE gui=bold
" hi @markup.heading.2.markdown guifg=#ffffff guibg=NONE gui=bold
" hi @markup.heading.3.markdown guifg=#CDD9E5 guibg=NONE gui=bold
" hi @markup.heading.4.markdown guifg=#8899A6 guibg=NONE gui=bold
" hi link @markup.raw.markdown_inline Special
" hi link @markup.link.label          markdownLinkText
" hi link @markup.link.url            markdownUrl
" hi link @markup.quote               markdownBlockquote
" hi link @markup.italic              markdownItalic
" hi link @markup.strong              markdownBold


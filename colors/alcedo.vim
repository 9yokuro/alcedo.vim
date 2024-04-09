vim9script

if exists("g:loaded_alcedo")
  finish
endif

g:loaded_alcedo = 1
highlight clear

if exists("syntax_on")
  syntax reset
endif

g:colors_name = "alcedo"

const colors: dict<string> = {
  black: "#000810",
  blue: "#007ce9",
  white: "#eedcd2",
  yellow: "#eea47f",
}

const fg_black: string = "ctermfg=black guifg=" .. colors.black .. " "
const fg_blue: string = "ctermfg=blue guifg=" .. colors.blue .. " "
const fg_none: string = "ctermfg=NONE guifg=NONE "
const fg_yellow: string = "ctermfg=yellow guifg=" .. colors.yellow .. " "
const fg_white: string = "ctermfg=white guifg=" .. colors.white .. " "

const bg_black: string = "ctermbg=black guibg=" .. colors.black .. " "
const bg_blue: string = "ctermbg=blue guibg=" .. colors.blue .. " "
const bg_none: string = "ctermbg=NONE guibg=NONE "
const bg_yellow: string = "ctermbg=yellow guibg=" .. colors.yellow .. " "
const bg_white: string = "ctermbg=white guibg=" .. colors.white .. " "

const bold: string = "term=bold cterm=bold gui=bold "
const bold_underline: string = "term=bold,underline cterm=bold,underline gui=bold,underline "
const italic: string = "term=italic cterm=italic gui=italic "
const none: string = "term=NONE cterm=NONE gui=NONE "
const reverse: string = "term=reverse cterm=reverse gui=reverse "
const underline: string = "term=underline cterm=underline gui=underline "
const undercurl: string = "term=undercurl cterm=undercurl gui=undercurl "

execute "highlight Comment " .. fg_white .. bg_none .. italic
execute "highlight Constant " .. fg_white .. bg_none .. none
highlight link String Constant
highlight link Character Constant
highlight link Number Constant
highlight link Boolean Constant
highlight link Float Constant
execute "highlight Identifier " .. fg_white .. bg_none .. bold
highlight link Function Identifier
execute "highlight Statement " .. fg_white .. bg_none .. none
highlight link Conditional Statement
highlight link Repeat Statement
highlight link Label Statement
highlight link Operator Statement
highlight link Keyword Statement
highlight link Exception Statement
execute "highlight PreProc " .. fg_white .. bg_none .. italic
highlight link Include PreProc
highlight link Define PreProc
highlight link Macro PreProc
highlight link PreCondit PreProc
execute "highlight Type " .. fg_white .. bg_none .. bold
highlight link StorageClass Type
highlight link Structure Type
highlight link Typedef Type
execute "highlight Special " .. fg_white .. bg_none .. none
highlight link SpecialChar Special
highlight link Tag Special
highlight link Delimiter Special
highlight link SpecialComment Special
highlight link Debug Special
execute "highlight Underlined " .. fg_white .. bg_none .. underline
execute "highlight Ignore " .. fg_white .. bg_none .. none
execute "highlight Error " .. fg_black .. bg_yellow .. none
execute "highlight Todo " .. fg_white .. bg_none .. none
execute "highlight Added " .. fg_white .. bg_none .. underline
execute "highlight Changed " .. fg_blue .. bg_none .. none
execute "highlight Removed " .. fg_yellow .. bg_none .. none

execute "highlight ColorColumn " .. fg_white .. bg_black .. none
execute "highlight Conceal " .. fg_white .. bg_black .. none
highlight link CurSearch Search
execute "highlight Cursor " .. fg_none .. bg_none .. reverse
highlight link lCursor Cursor
execute "highlight CursorColumn " .. fg_black .. bg_white .. none
execute "highlight CursorLine " .. fg_black .. bg_white .. none
execute "highlight Directory " .. fg_white .. bg_black .. none
execute "highlight DiffAdd " .. fg_white .. bg_black .. none
execute "highlight DiffChange " .. fg_white .. bg_black .. none
execute "highlight DiffDelete " .. fg_white .. bg_black .. none
execute "highlight DiffText " .. fg_white .. bg_black .. none
highlight link EndOfBuffer NonText
execute "highlight TermCursor " .. fg_none .. bg_none .. reverse
execute "highlight ErrorMsg " .. fg_yellow .. bg_black .. none
highlight link WinSeparator VertSplit
execute "highlight Folded " .. fg_blue .. bg_black .. none
execute "highlight FoldColumn " .. fg_blue .. bg_black .. none
execute "highlight SignColumn " .. fg_blue .. bg_black .. none
execute "highlight IncSearch " .. fg_none .. bg_none .. reverse
highlight link Substitute Search
execute "highlight LineNr " .. fg_yellow .. bg_none .. none
highlight link LineNrAbove LineNr
highlight link LineNrBelow LineNr
execute "highlight CursorLineNr " .. fg_yellow .. bg_none .. bold_underline
highlight link CursorLineFold FoldColumn
highlight link CursorLineSign SignColumn
execute "highlight MatchParen " .. fg_none .. bg_blue .. none
execute "highlight ModeMsg " .. fg_blue .. bg_none .. none
highlight link MsgSeparator StatusLine
execute "highlight MoreMsg " .. fg_blue .. bg_none .. bold
execute "highlight NonText " .. fg_blue .. bg_none .. none
execute "highlight Normal " .. fg_white .. bg_black .. none
highlight link NormalFloat Pmenu
highlight link FloatBorder WinSeparator
highlight link FloatTitle Title
highlight link NormalNC Normal
execute "highlight Pmenu " .. fg_white .. bg_black .. none
execute "highlight PmenuSel " .. fg_black .. bg_white .. none
highlight link PmenuKind Pmenu
highlight link PmenuKindSel PmenuSel
highlight link PmenuExtra Pmenu
highlight link PmenuExtraSel PmenuSel
execute "highlight PmenuSbar " .. fg_none .. bg_black .. none
execute "highlight PmenuThumb " .. fg_none .. bg_white .. none
execute "highlight Question " .. fg_blue .. bg_none .. bold
highlight link QuickFixLine Search
execute "highlight Search " .. fg_black .. bg_blue .. none
execute "highlight SpecialKey " .. fg_blue .. bg_none .. none
execute "highlight SpellBad guisp=NONE " .. fg_none .. bg_none .. undercurl
execute "highlight SpellCap guisp=NONE " .. fg_none .. bg_none .. undercurl
execute "highlight SpellLocal guisp=NONE " .. fg_none .. bg_none .. undercurl
execute "highlight SpellRare guisp=NONE " .. fg_none .. bg_none .. undercurl
execute "highlight StatusLine " .. fg_white .. bg_none .. none
execute "highlight StatusLineNC " .. fg_white .. bg_none .. none
execute "highlight StatusLineTerm " .. fg_white .. bg_none .. none
execute "highlight StatusLineTermNC " .. fg_white .. bg_none .. none
execute "highlight TabLine " .. fg_white .. bg_black .. underline
execute "highlight TabLineFill " .. fg_none .. bg_none .. reverse
execute "highlight TabLineSel " .. fg_none .. bg_none .. bold
execute "highlight Title " .. fg_blue .. bg_none .. bold
execute "highlight Visual " .. fg_black .. bg_blue .. none
execute "highlight WarningMsg " .. fg_yellow .. bg_none .. none
highlight link Whitespace NonText
execute "highlight WildMenu " .. fg_blue .. bg_black .. none
execute "highlight WinBar " .. fg_none .. bg_none .. bold
highlight link WinBarNC WinBar
execute "highlight VertSplit " .. fg_white .. bg_none .. none

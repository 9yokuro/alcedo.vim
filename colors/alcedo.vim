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
  none: "NONE",
  white: "#eedcd2",
  yellow: "#eea47f",
}

const group_name: dict<dict<string>> = {
  Comment: {
    guifg: colors.white,
    ctermfg: "white",
    attr: "italic",
  },

  Constant: {
    guifg: colors.white,
    ctermfg: "white",
  },

  String: {
    link: "Constant",
  },

  Character: {
    link: "Constant",
  },

  Number: {
    link: "Constant",
  },

  Boolean: {
    link: "Constant",
  },

  Float: {
    link: "Constant",
  },

  Identifier: {
    guifg: colors.white,
    ctermfg: "white",
    attr: "bold",
  },

  Function: {
    link: "Identifier",
  },

  Statement: {
    guifg: colors.white,
    ctermfg: "white",
  },

  Conditional: {
   link: "Statement",
  },

  Repeat: {
    link: "Statement",
  },

  Label: {
    link: "Statement",
  },

  Operator: {
    link: "Statement",
  },

  Keyword: {
    link: "Statement",
  },

  Exception: {
    link: "Statement",
  },

  PreProc: {
    guifg: colors.white,
    ctermfg: "white",
    attr: "italic",
  },

  Include: {
    link: "PreProc",
  },

  Define: {
    link: "PreProc",
  },

  Macro: {
    link: "PreProc",
  },

  PreCondit: {
    link: "PreProc",
  },

  Type: {
    guifg: colors.white,
    ctermfg: "white",
    attr: "bold",
  },

  StorageClass: {
  link: "Type",
  },

  Structure: {
    link: "Type",
  },

  Typedef: {
    link: "Type",
  },

  Special: {
    guifg: colors.white,
    ctermfg: "white",
  },

  SpecialChar: {
    link: "Special",
  },

  Tag: {
    link: "Special",
  },

  Delimiter: {
    link: "Special",
  },

  SpecialComment: {
    link: "Special",
  },

  Debug: {
    link: "Special",
  },

  Underlined: {
    guifg: colors.white,
    ctermfg: "white",
    attr: "underline",
  },

  Ignore: {
    guifg: colors.white,
    ctermfg: "white",
  },

  Error: {
    guifg: colors.black,
    ctermfg: "black",
    guibg: colors.yellow,
    ctermbg: "yellow",
  },

  Todo: {
    guifg: colors.white,
    ctermfg: "white",
  },
}

const highlight_groups: dict<dict<string>> = {
  ColorColumn: {
    guifg: colors.white,
    ctermfg: "white",
    guibg: colors.black,
    ctermbg: "black",
  },

  Conceal: {
    guifg: colors.white,
    ctermfg: "white",
    guibg: colors.black,
    ctermbg: "black",
  },

  CurSearch: {
    link: "Search",
  },

  Cursor: {
    attr: "reverse",
  },

  lCursor: {
    link: "Cursor",
  },

  CursorColumn: {
    guifg: colors.black,
    ctermfg: "black",
    guibg: colors.white,
    ctermbg: "white",
  },

  CursorLine: {
    guifg: colors.black,
    ctermfg: "black",
    guibg: colors.white,
    ctermbg: "white",
  },

  Directory: {
    guifg: colors.white,
    ctermfg: "white",
    guibg: colors.black,
    ctermbg: "black",
  },

  DiffAdd: {
    guifg: colors.white,
    ctermfg: "white",
    guibg: colors.black,
    ctermbg: "black",
  },

  DiffChange: {
    guifg: colors.white,
    ctermfg: "white",
    guibg: colors.black,
    ctermbg: "black",
  },

  DiffDelete: {
    guifg: colors.white,
    ctermfg: "white",
    guibg: colors.black,
    ctermbg: "black",
  },

  DiffText: {
    guifg: colors.white,
    ctermfg: "white",
    guibg: colors.black,
    ctermbg: "black",
  },

  EndOfBuffer: {
    link: "NonText",
  },

  TermCursor: {
    attr: "reverse",
  },

  ErrorMsg: {
    guifg: colors.yellow,
    ctermfg: "yellow",
    guibg: colors.black,
    ctermbg: "black",
  },

  WinSeparator: {
    link: "VertSplit",
  },

  Folded: {
    guifg: colors.blue,
    ctermfg: "blue",
    guibg: colors.black,
    ctermbg: "black",
  },

  FoldColumn: {
    guifg: colors.blue,
    ctermfg: "blue",
    guibg: colors.black,
    ctermbg: "black",
  },

  SignColumn: {
    guifg: colors.blue,
    ctermfg: "blue",
    guibg: colors.black,
    ctermbg: "black",
  },

  IncSearch: {
    attr: "reverse",
  },

  Substitute: {
    link: "Search",
  },

  LineNr: {
    guifg: colors.yellow,
    ctermfg: "yellow",
  },

  LineNrAbove: {
    link: "LineNr",
  },

  LineNrBelow: {
    link: "LineNr",
  },

  CursorLineNr: {
    guifg: colors.yellow,
    ctermfg: "yellow",
    attr: "bold,underline",
  },

  CursorLineFold: {
    link: "FoldColumn",
  },

  CursorLineSign: {
    link: "SignColumn",
  },

  MatchParen: {
    guibg: colors.blue,
    ctermbg: "blue",
  },

  ModeMsg: {
    guifg: colors.blue,
    ctermfg: "blue",
  },

  MsgSeparator: {
    link: "StatusLine",
  },

  MoreMsg: {
    guifg: colors.blue,
    ctermfg: "blue",
    attr: "bold",
  },

  NonText: {
    guifg: colors.blue,
    ctermfg: "blue",
  },

  Normal: {
    guifg: colors.white,
    ctermfg: "white",
    guibg: colors.black,
    ctermbg: "black",
  },

  NormalFloat: {
    link: "Pmenu",
  },

  FloatBorder: {
    link: "WinSeparator",
  },

  FloatTitle: {
    link: "Title",
  },

  NormalNC: {
    link: "Normal",
  },

  Pmenu: {
    guifg: colors.white,
    ctermfg: "white",
    guibg: colors.black,
    ctermbg: "black",
  },

  PmenuSel: {
    guifg: colors.black,
    ctermfg: "black",
    guibg: colors.white,
    ctermbg: "white",
  },

  PmenuKind: {
    link: "Pmenu",
  },

  PmenuKindSel: {
    link: "PmenuSel",
  },

  PmenuExtra: {
    link: "Pmenu",
  },

  PmenuExtraSel: {
    link: "PmenuSel",
  },

  PmenuSbar: {
    guibg: colors.black,
    ctermbg: "black",
  },

  PmenuThumb: {
    guibg: colors.white,
    ctermbg: "white",
  },

  Question: {
    guifg: colors.blue,
    ctermfg: "blue",
    attr: "bold",
  },

  QuickFixLine: {
    link: "Search",
  },

  Search: {
    guifg: colors.black,
    ctermfg: "black",
    guibg: colors.blue,
    ctermbg: "blue",
  },

  SpecialKey: {
    guifg: colors.blue,
    ctermfg: "blue",
  },

  SpellBad: {
    attr: "undercurl",
  },

  SpellCap: {
    link: "SpellBad",
  },

  SpellLocal: {
    link: "SpellBad",
  },

  SpellRare: {
    link: "SpellBad",
  },

  StatusLine: {
    guifg: colors.white,
    ctermfg: "white",
  },

  StatusLineNC: {
    guifg: colors.white,
    ctermfg: "white",
  },

  TabLine: {
    guifg: colors.white,
    ctermfg: "white",
    guibg: colors.black,
    ctermbg: "black",
    attr: "underline",
  },

  TabLineFill: {
    attr: "reverse",
  },

  TabLineSel: {
    attr: "bold",
  },

  Title: {
    guifg: colors.blue,
    ctermfg: "blue",
    attr: "bold",
  },

  Visual: {
    guifg: colors.black,
    ctermfg: "black",
    guibg: colors.blue,
    ctermbg: "blue",
  },

  WarningMsg: {
    guifg: colors.yellow,
    ctermfg: "yellow",
  },

  Whitespace: {
    link: "NonText",
  },

  WildMenu: {
    guifg: colors.blue,
    ctermfg: "blue",
    guibg: colors.black,
    ctermbg: "black",
  },

  WinBar: {
    attr: "bold",
  },

  WinBarNC: {
    link: "WinBar",
  },

  VertSplit: {
    guifg: colors.white,
    ctermfg: "white",
  },
}

def Highlight(groups: dict<dict<string>>): void
  for [group, parameters] in items(groups)
    const link: string = get(parameters, "link", colors.none)
  
    if link != colors.none
      execute "highlight link " .. group .. " " .. link
      continue
    endif
  
    const guifg: string = get(parameters, "guifg", colors.none)
    const ctermfg: string = get(parameters, "ctermfg", colors.none)
    const guibg: string = get(parameters, "guibg", colors.none)
    const ctermbg: string = get(parameters, "ctermbg", colors.none)
    const attr: string = get(parameters, "attr", colors.none)
    execute "highlight " .. group .. " " .. colors.none

    execute "highlight " .. group
      .. " guifg=" .. guifg
      .. " ctermfg=" .. ctermfg
      .. " guibg=" .. guibg
      .. " ctermbg=" .. ctermbg
      .. " term=" .. attr
      .. " cterm=" .. attr
      .. " gui=" .. attr
  endfor
enddef

Highlight(group_name)
Highlight(highlight_groups)

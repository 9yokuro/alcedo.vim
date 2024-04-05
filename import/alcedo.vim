vim9script

export def MakeBackgroundTransparent(): void
  const groups: list<string> = [
    "FoldColumn",
    "SignColumn",
    "Normal",
    "NormalNC",
  ]

  for group in groups
    execute "highlight " .. group .. " ctermbg=NONE guibg=NONE"
  endfor
enddef

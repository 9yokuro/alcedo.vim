vim9script

export def MakeBackgroundTransparent(): void
  if g:loaded_alcedo == 0 || g:colors_name != "alcedo"
    return
  endif

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

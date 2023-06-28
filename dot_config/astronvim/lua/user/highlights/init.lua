return function()
  local get_hlgroup = require("astronvim.utils").get_hlgroup
  local nontext = get_hlgroup "NonText"
  return {
    CursorLineFold = { link = "CursorLineNr" },
    GitSignsCurrentLineBlame = { fg = nontext.fg, italic = true }, -- italicize git blame virtual text
    HighlightURL = { underline = true },
  }
end

" Make it beautiful - colors and fonts

set background=dark
highlight LineNr ctermfg=yellow ctermbg=black

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

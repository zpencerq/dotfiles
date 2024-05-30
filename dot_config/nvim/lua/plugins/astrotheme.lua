return {
  {
    "AstroNvim/astrotheme",
    opts = {
      palette = "astrodark",
      -- Modify the color palette for the default theme
      colors = {
        fg = "#abb2bf",
        bg = "#1e222a",
      },
      highlights = {
        global = {
          modify_hl_groups = function(hl, c) -- or a function that returns a new table of colors to set
            hl.Normal = { fg = c.fg, bg = c.bg }

            -- New approach instead of diagnostic_style
            hl.DiagnosticError.italic = true
            hl.DiagnosticHint.italic = true
            hl.DiagnosticInfo.italic = true
            hl.DiagnosticWarn.italic = true

            return hl
          end
        },
      },
      -- enable or disable highlighting for extra plugins
      plugins = {
        aerial = true,
        beacon = false,
        bufferline = true,
        cmp = true,
        dashboard = true,
        highlighturl = true,
        hop = true,
        indent_blankline = true,
        lightspeed = false,
        ["neo-tree"] = true,
        notify = true,
        ["nvim-tree"] = false,
        ["nvim-web-devicons"] = true,
        rainbow = true,
        symbols_outline = false,
        telescope = true,
        treesitter = true,
        vimwiki = false,
        ["which-key"] = true,
      },
    },
  },
}

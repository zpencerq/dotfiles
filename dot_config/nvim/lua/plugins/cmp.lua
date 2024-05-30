return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-calc",
    "hrsh7th/cmp-emoji",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
  },
  opts = function(_, opts)
    local cmp = require "cmp"

    return require("astrocore").extend_tbl(opts, {
      window = {
        completion = {
          winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:Visual,Search:None",
          border = "single",
          col_offset = -1,
          side_padding = 0,
        },
      },
      experimental = {
        ghost_text = true,
      },
      sources = cmp.config.sources {
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip", priority = 750 },
        { name = "emoji", priority = 700 },
        { name = "calc", priority = 650 },
        { name = "path", priority = 500 },
        { name = "buffer", priority = 250 },
      },
    })
  end,
}

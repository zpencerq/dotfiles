return {
  "onsails/lspkind.nvim",
  opts = function(_, opts)
    opts.mode = 'symbol_text'
    -- use codicons preset
    opts.preset = "codicons"
    -- set some missing symbol types
    opts.symbol_map = {
      Array = "",
      Boolean = "",
      Key = "",
      Namespace = "",
      Null = "",
      Number = "",
      Object = "",
      Package = "",
      String = "",
    }
    return opts
  end,
}

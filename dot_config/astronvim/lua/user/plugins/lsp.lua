return {
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  { "lvimuser/lsp-inlayhints.nvim", config = true },
  {
    "Maan2003/lsp_lines.nvim",
    event = "User AstroFile",
    config = function() require("lsp_lines").setup() end,
  },
}

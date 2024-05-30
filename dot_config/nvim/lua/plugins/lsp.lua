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
  {
    "j-hui/fidget.nvim",
    event = "BufRead",
    opts = {
      -- options
    },
  },
  -- {
  --   "pmizio/typescript-tools.nvim",
  --   event = "User AstroFile",
  --   dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  --   opts = {
  --      settings = {
  --       tsserver_plugins = {  "@monodon/typescript-nx-imports-plugin" },
  --     }
  --   },
  -- }
}

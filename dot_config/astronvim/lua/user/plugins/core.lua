return {
  -- customize alpha options
  { "goolord/alpha-nvim", enabled = false },
  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },
  
  { "akinsho/toggleterm.nvim", opts = { terminal_mappings = false } },
  { "rcarriga/nvim-notify", opts = { timeout = 0 } },
  --
  {
    "phaazon/hop.nvim",
    branch = 'v2',
    config = function()
      require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
    end,
    lazy = false
  },
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
    lazy = false
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        hijack_netrw_behavior = "open_default",
        filtered_items = {
          always_show = { ".github", ".gitignore" },
        },
      },
    },
  },
}

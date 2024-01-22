-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
local utils = require "user.utils"
local astro_utils = require "astronvim.utils"
local hop = require('hop')
local directions = require('hop.hint').HintDirection

return {
  -- first key is the mode
  n = {
    -- better search
    n = { utils.better_search "n", desc = "Next search" },
    N = { utils.better_search "N", desc = "Previous search" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>h"] = { name = "Hop" },

    ["<leader>ha"] = { ":HopAnywhere<cr>", desc = "Hop Anywhere" },
    ["<leader>hl"] = { ":HopLineStart<cr>", desc = "Hop Line Start" },
    ["<leader>hp"] = { ":HopPattern<cr>", desc = "Hop Pattern" },
    ["<leader>hw"] = { ":HopWord<cr>", desc = "Hop Word" },

    ["<leader>hf"] = {
      function()
        hop.hint_char1({ direction = directions.AFTER_CURSOR })
      end,
      desc = "Hop Forward"
    },
    ["<leader>ht"] = {
      function()
        hop.hint_char1({ direction = directions.BEFORE_CURSOR })
      end,
      desc = "Hop Backward"
    },
    ["<leader>x"] = { desc = "󰒡 Trouble" },
    ["<leader>xx"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
    ["<leader>xX"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
    ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Location List (Trouble)" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List (Trouble)" },
    ["<leader>xT"] = { "<cmd>TodoTrouble<cr>", desc = "TODOs (Trouble)" },

    ["<leader>."] = { ":noh<cr>", desc = "No highlight" },

    ["H"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<S-Tab>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<Tab>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["L"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },

    ["<leader>'"] = { "V:Translate EN<cr>", desc = "Translate to English" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["<leader>'"] = { ":Translate EN<cr>", desc = "Translate to English" },
  },
  [{'o', 'v', 'n'}] = {
    ["<space>"]   = { "<Cmd>HopWord<cr>", desc = "Hop Word", noremap = true, silent = true },

    ["<CR>"]      = { "<Cmd>HopPattern<cr>", desc = "Hop Pattern", noremap = true, silent = true },
  }
}

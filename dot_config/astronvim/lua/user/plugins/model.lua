local M = require "user.models"
local magicoder = require "user.models.magicoder"
local deepseek = require "user.models.deepseek"
local agents = require "user.models.agents"
local presets = require "user.models.presets"
local chatml_fmt = require "user.models.format.chatml"

return {
  {
    'gsuuon/model.nvim',
    opts = function(_, config)
      local util = require('model.util')
      local ollama = require('model.providers.ollama')
      
      local zephyr_fmt = require('model.format.zephyr')
      local function input_if_selection(input, context)
        return context.selection and input or ''
      end

      return {
        prompts = {
          code = {
            provider = ollama,
            params = {
              model = "magicoder"
            },
            builder = function(input, context)
              return {
                prompt = magicoder.prompt(input)
              }
            end,
          },
          ['commit'] = {
            provider = ollama,
            mode = 'insert',
            params = {
              model = "magicoder"
            },
            builder = function()
              local git_diff = vim.fn.system {'git', 'diff', '--staged', '--no-color'}

              local instruction = 'Write a short commit message according '..
                  'to the Conventional Commits specification for '..
                  'the following git diff: \n\n```\n' .. git_diff .. '\n```'

              return {
                prompt = magicoder.prompt(instruction)
              }
            end,
          },
          ['scommit'] = {
            provider = ollama,
            mode = 'insert',
            params = {
              model = "deepseek-coder"
            },
            builder = function()
              local git_diff = vim.fn.system {'git', 'diff', '--staged', '--no-color'}

              local instruction = 'Write a short commit message according '..
                  'to the Conventional Commits specification for '..
                  'the following git diff: \n\n```\n' .. git_diff .. '\n```'

              return {
                prompt = deepseek.prompt(instruction)
              }
            end,
          },
        },

        chats = {
          z = {
            provider = ollama,
            params = {
              model = "zephyr"
            },
            system = "You are a helpful assistant. Please be concise.\n",
            create = input_if_selection,
            run = zephyr_fmt.chat,
          },
          l = presets.z(agents.techlead),
          p = presets.z(agents.product),
          mc = presets.mc(agents.writer)
        },

        cmd = { 'M', 'Model', 'Mchat' },
        ft = 'mchat',
        hl_group = "Comment",

      }
    end,
    lazy = false,
    keys = {
      {'<leader>m', desc = 'Model' },
      {'<leader><space>', ':Mchat<cr>', desc = 'Model Chat', mode = 'n' },

      {'<leader>md', ':Mdelete<cr>', desc = 'Delete', mode = 'n'},
      {'<leader>ms', ':Mselect<cr>', desc = 'Select', mode = 'n'},
      {'<leader>mz', ':Mchat z<cr>', desc = 'Zephyr', mode = 'n'},

      {'<leader>md', ':Mdelete<cr>', desc = 'Delete', mode = 'v'},
      {'<leader>ms', ':Mselect<cr>', desc = 'Select', mode = 'v'},
      {'<leader>mz', ':Mchat z<cr>', desc = 'Zephyr', mode = 'v' },
    },
  }
}

local function input_if_selection(input, context)
  return context.selection and input or ''
end

return {
  z = function(agent)
    local zephyr_fmt = require('model.format.zephyr')
    local ollama = require('model.providers.ollama')

    return {
      provider = ollama,
      params = {
        model = "zephyr"
      },
      system = agent.system,
      create = input_if_selection,
      run = zephyr_fmt.chat,
    }
  end,
  mc = function(agent)
    local magicoder = require "user.models.magicoder"
    local chatml_fmt = require "user.models.format.chatml"
    local ollama = require('model.providers.ollama')

    return {
      provider = ollama,
      params = {
        model = "magicoder"
      },
      system = agent.system,
      create = input_if_selection,
      run = chatml_fmt.chat,
    }
  end

}

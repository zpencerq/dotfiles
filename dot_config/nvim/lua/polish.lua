vim.api.nvim_create_autocmd("FileType", {
  desc = "Enable wrap and spell for text like documents",
  group = vim.api.nvim_create_augroup("auto_spell", { clear = true }),
  pattern = { "gitcommit", "markdown", "text", "plaintex", "mchat" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

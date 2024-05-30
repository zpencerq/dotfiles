return {
  "uga-rosa/translate.nvim",
  event = "BufRead",
  opts = {
    default = {
        command = "google",
        output = "floating",
    },
  },
}

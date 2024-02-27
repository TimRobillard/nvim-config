return {
  "f-person/git-blame.nvim",
  config = function()
    local gitBlame = require("gitblame")
    gitBlame.setup({
      enabled = true,
    })
  end,
}

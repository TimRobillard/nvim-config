return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    local catppuccin = require("catppuccin")

    catppuccin.setup({
      flavour = "mocha",
      dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.15,
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}

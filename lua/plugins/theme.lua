return {
  "EdenEast/nightfox.nvim",
  config = function()
    local nightfox = require("nightfox")
    nightfox.setup({
      options = {
        dim_inactive = true,
        styles = {
          comments = "italic",
        },
      },
    })

    vim.cmd("colorscheme carbonfox")
  end,
}

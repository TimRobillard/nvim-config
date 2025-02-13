return {
  "f-person/git-blame.nvim",
  config = function()
    local gitBlame = require("gitblame")
    gitBlame.setup({
      enabled = true,
    })
    vim.keymap.set("n", "<leader>dd", ":DiffviewOpen<CR>")
    vim.keymap.set("n", "<leader>tc", ":tabclose<CR>")
  end,
}

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("set title")
vim.cmd("set titlestring=%f")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set termguicolors")
vim.cmd("set spell")
vim.cmd("set spelllang=en_us,en_ca")
vim.cmd("setlocal spelloptions=camel")
vim.filetype.add({ extension = { templ = "templ" } })
vim.g.mapleader = " "
vim.api.nvim_create_autocmd("Filetype", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "r", "o" })
  end,
})

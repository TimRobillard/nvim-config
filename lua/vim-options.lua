vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.hlsearch = false
vim.opt.title = true
vim.opt.titlestring = "%f"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.spell = true
vim.opt.spelllang = "en_us"
vim.filetype.add({ extension = { templ = "templ" } })
vim.g.mapleader = " "
vim.cmd("setlocal spelloptions=camel")
vim.api.nvim_create_autocmd("Filetype", {
    pattern = "*",
    callback = function()
        vim.opt_local.formatoptions:remove({ "r", "o" })
    end,
})

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "eslint", "lua_ls", "pyright", "tsserver", "gopls", "html", "htmx", "templ", "tailwindcss", "yamlls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
        filetypes = { "html", "templ" },
      })
      lspconfig.htmx.setup({
        capabilities = capabilities,
        filetypes = { "html", "templ" },
      })
      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
        filetypes = { "templ", "javascript", "typescript", "react" },
        init_options = { userLanguages = { templ = "html" } },
      })
      lspconfig.templ.setup({
        capabilities = capabilities,
      })
      lspconfig.gopls.setup({
        capabilities = capabilities,
        cmd = { "gopls" },
        filetypes = { "go", "gomod", "gowork", "gotmpl", "templ" },
        settings = {
          gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
              unusedparams = true,
            },
          },
        },
      })
      lspconfig.yamlls.setup({
        capabilities = capabilities,
        settings = {
          schemas = {
            ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.0/schema.yaml"] = "/*",
          },
        },
      })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>gg", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>cc", vim.diagnostic.open_float, {})
    end,
  },
}

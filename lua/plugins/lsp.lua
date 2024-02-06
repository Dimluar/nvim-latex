return {
  { "folke/neodev.nvim", opts = {}, },
  { "williamboman/mason.nvim", opts = {}, },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local wk = require("which-key")
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      wk.register({
        ["<leader>"] = {
          l = {
            name = "LSP",
            h = { vim.lsp.buf.hover, "Hover documentation" },
            a = { vim.lsp.buf.code_action, "Code actions" },
            d = { vim.lsp.buf.definition, "Go to definition" },
          },
        },
      })
    end,
  },
}

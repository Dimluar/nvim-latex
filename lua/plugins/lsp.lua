return {
	{ "folke/neodev.nvim", opts = {} },
	{ "williamboman/mason.nvim", opts = {} },
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
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
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

			local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
			for type, icon in pairs(signs) do
				local hl = "DiagnosticSign" .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
			end
		end,
	},
}

return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua,

				-- Python
				null_ls.builtins.formatting.black,
				null_ls.builtins.diagnostics.pylint.with({prefer_local = "~/anaconda3/envs/pynvim/bin"}),
			},
		})

		vim.keymap.set("n", "<leader>gf", ":lua vim.lsp.buf.format({ timeout_ms = 5000 })<CR>", { silent = true })
	end,
}

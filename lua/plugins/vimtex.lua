return {
	"lervag/vimtex",
	config = function()
		vim.g.vimtex_view_method = "sioyek"
		vim.g.vimtex_view_sioyek_exe = "sioyek.exe"
		vim.g.vimtex_callback_progpath = "wsl nvim"
		vim.g.vimtex_view_sioyek_options = "--reuse-window --nofocus --forward-search-file @tex --forward-search-line @line"

		vim.g.vimtex_syntax_enabled = 1
		vim.g.vimtex_conceal_enabled = 1
	end,
}

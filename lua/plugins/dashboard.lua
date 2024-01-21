return {
	{
		"MaximilianLloyd/ascii.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("telescope").load_extension("ascii")
		end,
	},
	{
		"goolord/alpha-nvim",
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")
			local ascii = require("ascii")

			dashboard.section.header.val = ascii.art.planets.planets.saturn_plus

			dashboard.section.buttons.val = {

				dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
				dashboard.button("f", "  > Find file", ":Telescope find_files<CR>"),
				dashboard.button("r", "󰚰  > Recent", ":Telescope oldfiles<CR>"),
				dashboard.button("c", "󰏘  > Colorscheme", ":lua SelectColors()<CR>"),
				dashboard.button("s", "  > Settings", ":e ~/.config/nvim/<CR>"),
				dashboard.button("q", "󰿅  > Quit NVIM", ":qa<CR>"),
			}
			local plugins = #vim.tbl_keys(require("lazy").plugins())
			local v = vim.version()
			local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
			local platform = vim.fn.has("win32") == 1 and "" or ""
			dashboard.section.footer.val =
				string.format("󰂖 %d  %s %d.%d.%d  %s", plugins, platform, v.major, v.minor, v.patch, datetime)

			alpha.setup(dashboard.opts)

			vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
		end,
	},
}

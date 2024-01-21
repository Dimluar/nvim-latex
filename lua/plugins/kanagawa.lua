return {
	"rebelot/kanagawa.nvim",
	config = function()
		table.insert(AllColors, "kanagawa")

		require("kanagawa").setup({
			colors = {
				theme = {
					all = {
						ui = {
							bg_gutter = "none",
						},
					},
				},
			},
		})

    SetColors("kanagawa")
	end,
}

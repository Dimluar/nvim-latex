return {
	"nvim-treesitter/nvim-treesitter",
	build = { ":TSUpdate" },
	config = function()
		require"nvim-treesitter.configs".setup {
			ensure_installed = {
                "c",
				"lua",
				"vim",
				"vimdoc",
                "query",
				"latex",
			},
            auto_install = true,

			highlight = {
                enable = true,
            },

			indent = {
                enable = true,
            },

            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<leader>ss",
                    node_incremental = "<leader>si",
                    scope_incremental = "<leader>sc",
                    node_decremental = "<leader>sd",
                },
            },
		}
	end
}

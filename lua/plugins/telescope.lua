return {
  "nvim-telescope/telescope.nvim", 
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local wk = require("which-key")
    local builtin = require('telescope.builtin')

    wk.register({
      ["<leader>"] = {
        f = {
          name = "Find",
          f = { builtin.find_files, "Find files" },
          g = { builtin.live_grep, "Find characters" },
          b = { builtin.buffers, "Find buffers" },
          h = { builtin.help_tags, "Find help tags" },
        },
      }
    })
  end,
}

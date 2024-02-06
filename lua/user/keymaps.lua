local wk = require("which-key")

-- Quality life
vim.keymap.set("i", "jf", "<Esc>")
vim.keymap.set("n", "-", vim.cmd.Ex)

-- Window split
wk.register({
  ["<leader>"] = {
    ["-"] = { "<Cmd>split<CR>", "Horizontal split" },
    ["|"] = { "<Cmd>vsplit<CR>", "Vertical split" },
  },
})

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

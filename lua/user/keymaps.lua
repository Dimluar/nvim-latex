local wk = require("which-key")
local km = require("utils.keymaps")
local imap = km.imap
local nmap = km.nmap

-- Quality life
imap("jf", "<Esc>")
nmap("-", vim.cmd.Ex)

-- Window split
wk.register({
  ["<leader>"] = {
    ["-"] = { "<Cmd>split<CR>", "Horizontal split" },
    ["|"] = { "<Cmd>vsplit<CR>", "Vertical split" },
  },
})

nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")

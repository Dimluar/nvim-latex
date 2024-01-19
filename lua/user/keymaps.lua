local noremap = function(mode, keymap, action)
    vim.keymap.set(mode, keymap, action, { noremap = true })
end
local keymap = function(mode, keymap, action)
    vim.keymap.set(mode, keymap, action)
end

-- Exit to file tree
keymap("n", "<leader>pv", vim.cmd.Ex)

-- Center on vertical movement
noremap("n", "<C-u>", "<C-u>zz")
noremap("n", "<C-d>", "<C-d>zz")
noremap("n", "n", "nzz")
noremap("n", "N", "Nzz")

-- Fast indent
noremap("v", "<", "<v")
noremap("v", ">", ">v")

-- Move by displayed line
noremap({"n", "v"}, "j", "gj")
noremap({"n", "v"}, "k", "gk")
noremap({"n", "v"}, "0", "g0")
noremap({"n", "v"}, "$", "g$")

-- Fast back to normal 
noremap("i", "jf", "<Esc>")

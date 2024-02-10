local M = {}

M.nmap = function(key, cmd)
	vim.keymap.set("n", key, cmd)
end

M.imap = function(key, cmd)
	vim.keymap.set("i", key, cmd)
end

return M

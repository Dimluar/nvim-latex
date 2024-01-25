function SetColors(scheme)
	if scheme then
		vim.cmd.colorscheme(scheme)
	end
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

AllColors = {}
function SelectColors()
    print("Select colorscheme by number.")
	for key, value in pairs(AllColors) do
		print(string.format("%d: %s", key, value))
	end
	local id = vim.fn.input("Colorscheme > ")
    local scheme = AllColors[tonumber(id)]
    if scheme then
        SetColors(scheme)
    else
        print("\nColorscheme not found. Try again.\n")
        SelectColors()
    end
end

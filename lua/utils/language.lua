function SelectLanguage()
	local languages = {}
	languages[1] = "en"
	languages[2] = "gl"
	languages[3] = "es"

	print("\nSelect language by number.")
	for key, value in pairs(languages) do
		print(string.format("%d: %s", key, value))
	end

	local id = vim.fn.input("Language > ")

	local selectedLanguage = languages[tonumber(id)]
	if selectedLanguage then
		vim.opt.spelllang = { selectedLanguage }
	else
    print("Language not found. Try again.")
		SelectLanguage()
	end
end

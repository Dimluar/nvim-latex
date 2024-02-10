vim.g.mapleader = " "
vim.g.maplocalleader = " "

local options = {
	-- Moving around, searching and patterns
	incsearch = true,
	ignorecase = true,
	smartcase = true,

	-- Displaying text
	scrolloff = 10,
	sidescrolloff = 10,
	wrap = false,
	breakindent = true,
	number = true,
	relativenumber = true,
	numberwidth = 1,
	conceallevel = 0,

	-- Syntax, highlighting and spelling
	hlsearch = false,
	termguicolors = true,
	spell = false,
	spelllang = { "en" },

	-- Multiple windows
	hidden = true,
	splitbelow = true,
	splitright = true,

	-- Using the mouse
	mouse = "a",

	-- Messages and info
	showmode = false,

	-- Editing text
	undofile = true,

	-- Tabs and indenting
	tabstop = 2,
	shiftwidth = 2,
	smarttab = true,
	expandtab = true,
	autoindent = true,
	smartindent = true,

	-- Swap file
	swapfile = false,
	updatetime = 300,

	-- Reading and writing files
	backup = false,
	writebackup = false,

	-- Multi-byte characters
	fileencoding = "utf-8",

	-- Various
	virtualedit = { "block" },
	signcolumn = "yes",
}

for opt, val in pairs(options) do
	vim.opt[opt] = val
end

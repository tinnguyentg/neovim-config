return function()
	require("gruvbox").setup({
		italic = {
			strings = true,
			comments = true,
			operators = false,
			folds = true,
		},
		contrast = "hard",
	})

	-- Set colorscheme
	vim.cmd("colorscheme gruvbox")
end


--[[
--	Gruvbox setup
--]]

return function()
	local vim = vim

	require("gruvbox").setup({
		italic = false,
		contrast = "hard",
	})
	vim.cmd([[colorscheme gruvbox]])
end

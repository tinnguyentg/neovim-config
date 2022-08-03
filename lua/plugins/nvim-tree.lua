--[[
--	Nvim-tree setup
--]]

return function ()
	local map = require("maps").map
	require("nvim-tree").setup({
		filters = { custom = { "^.git$" } }
	})

	map('n', '<C-b>', ':NvimTreeToggle<CR>')
	map('i', '<C-b>', '<ESC>:NvimTreeToggle<CR>')
end

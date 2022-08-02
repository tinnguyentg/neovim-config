--[[
--	Vim-commentary setup
--]]

return function()
	local map = require("maps").map

	-- use Ctrl+/
	map("n", "<C-_>", "<Plug>CommentaryLine")
	map("v", "<C-_>", "<Plug>Commentary")
end

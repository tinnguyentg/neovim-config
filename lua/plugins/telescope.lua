--[[
--	Telescope setup
--]]

return function()
	local map = require("maps").map

	map("n", "ff", ":Telescope find_files<cr>")
	map("n", "FF", ":Telescope find_files hidden=true<cr>")
	map("n", "fg", ":Telescope live_grep<cr>")
	map("n", "fb", ":Telescope buffers<cr>")
end

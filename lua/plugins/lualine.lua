--[[
--	Lualine setup
--]]

return function()
	local lualine = require("lualine")
	local sections = lualine.get_config().sections

	-- Add absolute path.
	sections.lualine_a = { "mode", { "filename", path = 3 } }
	-- Remove filename in right-most left section.
	sections.lualine_c = { {} }

	lualine.setup({
		sections = sections,
	})
end

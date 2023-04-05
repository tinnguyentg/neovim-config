return function()
	local lualine = require("lualine")
	local sections = lualine.get_config().sections
	table.insert(sections.lualine_a, { "filename", path = 3 })

	lualine.setup({
		sections = sections,
	})
end

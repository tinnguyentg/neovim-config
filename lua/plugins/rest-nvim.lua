--[[
--	Rest-nvim setup
--]]

return function()
	local map = require("maps").map
	local rest_nvim = require("rest-nvim")

	rest_nvim.setup({
		-- Open request results in a horizontal split
		result_split_horizontal = false,
		-- Keep the http file buffer above|left when split horizontal|vertical
		result_split_in_place = true,
	})

	vim.api.nvim_create_user_command("RestNvim", function()
		rest_nvim.run()
	end, {})
	vim.api.nvim_create_user_command("RestNvimPreview", function()
		rest_nvim.run(true)
	end, {})
	vim.api.nvim_create_user_command("RestNvimLast", function()
		rest_nvim.last()
	end, {})
end

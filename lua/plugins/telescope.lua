--[[
--	Telescope setup
--]]

return function()
	local map = require("maps").map
	local telescope = require 'telescope'
	local builtin = require 'telescope.builtin'

	map("n", "ff", ":Telescope find_files<cr>")
	map("n", "FF", ":Telescope find_files hidden=true no_ignore=true<cr>")
	map("n", "fg", ":Telescope live_grep<cr>")
	map("n", "FG", ":Telescope live_grep hidden=true no_ignore=true<cr>")
	map("n", "fb", ":Telescope buffers<cr>")
	map("n", "gb", ":Telescope git_branches<cr>")
	map("n", "gst", ":Telescope git_status<cr>")

	telescope.setup({
		pickers = {
			find_files = {
				theme = "dropdown",
			},
			live_grep = {
				theme = "dropdown",
			},
		},
	})


	_G.custom_completion = {
		rg_type_list = function()
			local t = {}
			local typeList = io.popen("rg --type-list"):read("a")
			for ft in string.gmatch(typeList, '%a+') do
				table.insert(t, ft)
			end
			return t
		end,
	}
	vim.api.nvim_create_user_command("FG", function(opts)
		builtin.live_grep({ type_filter = opts.args })
	end,
		{
			nargs = "+",
			-- complete = "custom,v:lua.custom_completion.rg_type_list",
		})
end

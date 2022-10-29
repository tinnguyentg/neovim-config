--[[
--	Telescope setup
--]]

return function()
	local map = require("maps").map

	map("n", "ff", ":Telescope find_files<cr>")
	map("n", "FF", ":Telescope find_files hidden=true no_ignore=true<cr>")
	map("n", "fg", ":Telescope live_grep<cr>")
	map("n", "FG", ":Telescope live_grep hidden=true no_ignore=true<cr>")
	map("n", "fb", ":Telescope buffers<cr>")
	map("n", "gb", ":Telescope git_branches<cr>")
	map("n", "gst", ":Telescope git_status<cr>")

	local odoo_repository = os.getenv("ODOO_REPOSITORY")
	if odoo_repository then
		-- map("n", "fodoo", string.format(":Telescope find_files search_dirs={'%s'}<cr>", odoo_repository))
		-- map("n", "fgodoo", string.format(":Telescope live_grep search_dirs={'%s'}<cr>", odoo_repository))
		-- map("n", "fgodoopy", string.format(":Telescope live_grep search_dirs={'%s'} type_filter=py<cr>", odoo_repository))
		-- map("n", "fgodooxml", string.format(":Telescope live_grep search_dirs={'%s'} type_filter=xml<cr>", odoo_repository))

		vim.api.nvim_create_user_command(
			"OdooFind",
			string.format(":Telescope find_files search_dirs={'%s'}", odoo_repository),
			{}
		)
		vim.api.nvim_create_user_command(
			"OdooGrep",
			string.format(":Telescope live_grep search_dirs={'%s'}", odoo_repository),
			{}
		)
		vim.api.nvim_create_user_command(
			"OdooPyGrep",
			string.format(":Telescope live_grep search_dirs={'%s'} type_filter=py", odoo_repository),
			{}
		)
		vim.api.nvim_create_user_command(
			"OdooXmlGrep",
			string.format(":Telescope live_grep search_dirs={'%s'} type_filter=xml", odoo_repository),
			{}
		)
		vim.api.nvim_create_user_command(
			"OdooJsGrep",
			string.format(":Telescope live_grep search_dirs={'%s'} type_filter=js", odoo_repository),
			{}
		)
	end

	require("telescope").setup({
		pickers = {
			find_files = {
				theme = "dropdown",
			},
			live_grep = {
				theme = "dropdown",
			},
		},
	})
end

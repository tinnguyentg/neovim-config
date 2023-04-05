return function()
	require("nvim-tree").setup({
		filters = {
			dotfiles = true,
		},
		view = {
			width = 42,
			mappings = {
				list = {
					{ key = "<C-z>", action = "collapse_all" },
				},
			},
		},
	})

	vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", {})
	vim.keymap.set("i", "<C-b>", "<Esc>:NvimTreeClose<CR>a", {})
	vim.keymap.set("n", "<C-f>", ":NvimTreeFindFile<CR>", {})

	vim.keymap.set("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next)
	vim.keymap.set("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev)
	vim.keymap.set("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select)
end

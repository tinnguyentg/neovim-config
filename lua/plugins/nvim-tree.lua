--[[
--	Nvim-tree setup
--]]

return function()
	local map = require("maps").map
	require("nvim-tree").setup({
		filters = { custom = { "^.git$" } },
	})

	map("n", "<C-b>", ":NvimTreeToggle<CR>")
	map("i", "<C-b>", "<ESC>:NvimTreeToggle<CR>")
	map("n", "<C-f>", ":NvimTreeFindFile<CR>")
	map("i", "<C-f>", "<ESC>:NvimTreeFindFile<CR>")

	vim.keymap.set("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next)
	vim.keymap.set("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev)
	vim.keymap.set("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select)
end

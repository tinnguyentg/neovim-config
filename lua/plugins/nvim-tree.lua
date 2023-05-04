return function()
	local function on_attach(bufnr)
		local api = require('nvim-tree.api')

		local function opts(desc)
			return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
		end

		vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
		vim.keymap.set('n', '<Tab>', api.node.open.preview, opts('Open Preview'))
		vim.keymap.set('n', '<BS>', api.node.navigate.parent_close, opts('Close Directory'))
		vim.keymap.set('n', '<C-t>', api.node.open.tab, opts('Open: New Tab'))
		vim.keymap.set('n', '<C-v>', api.node.open.vertical, opts('Open: Vertical Split'))
		vim.keymap.set('n', '<C-x>', api.node.open.horizontal, opts('Open: Horizontal Split'))
		vim.keymap.set('n', '<C-k>', api.node.show_info_popup, opts('Info'))

		vim.keymap.set('n', 'a', api.fs.create, opts('Create'))
		vim.keymap.set('n', 'x', api.fs.cut, opts('Cut'))
		vim.keymap.set('n', 'c', api.fs.copy.node, opts('Copy'))
		vim.keymap.set('n', 'p', api.fs.paste, opts('Paste'))
		vim.keymap.set('n', 'y', api.fs.copy.filename, opts('Copy Name'))
		vim.keymap.set('n', 'Y', api.fs.copy.relative_path, opts('Copy Relative Path'))
		vim.keymap.set('n', 'r', api.fs.rename, opts('Rename'))
		vim.keymap.set('n', 'W', api.tree.collapse_all, opts('Collapse'))
		vim.keymap.set('n', 'R', api.tree.reload, opts('Refresh'))
		vim.keymap.set('n', 'm', api.marks.toggle, opts('Toggle Bookmark'))
		vim.keymap.set('n', 'H', api.tree.toggle_hidden_filter, opts('Toggle Dotfiles'))
		vim.keymap.set('n', 'I', api.tree.toggle_gitignore_filter, opts('Toggle Git Ignore'))
		vim.keymap.set('n', 'F', api.live_filter.clear, opts('Clean Filter'))
		vim.keymap.set('n', 'f', api.live_filter.start, opts('Filter'))
		vim.keymap.set('n', 'd', api.fs.remove, opts('Delete'))
		vim.keymap.set('n', 'D', api.fs.trash, opts('Trash'))
		vim.keymap.set('n', 'E', api.tree.expand_all, opts('Expand All'))
		vim.keymap.set('n', 'e', api.fs.rename_basename, opts('Rename: Basename'))

		vim.keymap.set('n', 'cd', api.tree.change_root_to_node, opts('Change Root'))
	end

	require("nvim-tree").setup({
		on_attach = on_attach,
		actions = {
			change_dir = {
				global = true,
			}
		},
		filters = {
			dotfiles = true,
		},
		view = {
			width = 42,
		},
	})

	vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", {})
	vim.keymap.set("n", "<C-f>", ":NvimTreeFindFile<CR>", {})

	vim.keymap.set("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next)
	vim.keymap.set("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev)
	vim.keymap.set("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select)
end

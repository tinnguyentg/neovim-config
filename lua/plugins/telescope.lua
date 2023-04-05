return function()
	local builtin = require("telescope.builtin")

	local type_filter_map = {
		python = "py",
		javascript = "js",
		scss = "css",
	}

	vim.keymap.set("n", "ff", builtin.find_files, {})

	-- Include hidden files
	vim.keymap.set("n", "FF", function()
		builtin.find_files({ hidden = true, no_ignore = true })
	end, {})

	vim.keymap.set("n", "fg", builtin.live_grep, {})
	-- Live grep with current buffer filetype
	vim.keymap.set("n", "tfg", function()
		local type_filter = vim.bo.filetype
		type_filter = type_filter_map[type_filter] or type_filter
		builtin.live_grep({ type_filter = type_filter, prompt_title = "Live Grep ." .. type_filter })
	end, {})

	-- Find buffers
	vim.keymap.set("n", "fb", builtin.buffers, {})

	-- Grep string in normal, visual modes
	vim.keymap.set("n", "fw", builtin.grep_string, {})
	vim.keymap.set("v", "fw", builtin.grep_string, {})

	-- Colorscheme
	vim.keymap.set("n", "fc", function()
		builtin.colorscheme({ enable_preview = true })
	end, {})

	-- List diagnostics current buffer
	vim.keymap.set("n", "fd", function()
		builtin.diagnostics({ bufnr = 0 })
	end, { noremap = true })
	vim.keymap.set("n", "gr", builtin.lsp_references, {})
	vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
	vim.keymap.set("n", "gi", builtin.lsp_implementations, {})
	vim.keymap.set("n", "<space>D", builtin.lsp_type_definitions, {})

	-- Git
	vim.keymap.set("n", "gst", builtin.git_status, {})

	--
	vim.keymap.set("n", "fm", builtin.marks, {})
end

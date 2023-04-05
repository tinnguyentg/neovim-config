return function()
	local Comment = require("Comment")
	local api = require("Comment.api")

	Comment.setup({})

	vim.keymap.set("n", "<C-_>", api.call("toggle.linewise", "g@"), { expr = true })
	vim.keymap.set("n", "<C-_>", api.call("toggle.linewise.current", "g@$"), { expr = true })
	vim.keymap.set("v", "<C-_>", api.call("toggle.linewise", "g@"), { expr = true })
end

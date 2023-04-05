return function()
	local chatgpt  = require("chatgpt")

	chatgpt.setup({
		keymaps = {
			submit = "<CR>"
		}
	})
end

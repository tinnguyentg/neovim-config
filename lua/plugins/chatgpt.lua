return function()
	local chatgpt  = require("chatgpt")

	chatgpt.setup({
		popup_input = {
			submit = "<CR>"
		}
	})
end

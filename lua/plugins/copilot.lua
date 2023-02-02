return function()
	local map = require("maps").map

	-- If you'd rather use a key that isn't <Tab>, define an <expr> map that calls
	-- copilot#Accept().  Here's an example with CTRL-J:
	map('i', '<Right>', 'copilot#Accept()', { expr = true })
end

--[[
--	Null-ls setup
--]]

return function()
	local null_ls = require("null-ls")
	local sources = {
		null_ls.builtins.formatting.pint,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.isort,
	}

	null_ls.setup({
		sources = sources,
	})
end

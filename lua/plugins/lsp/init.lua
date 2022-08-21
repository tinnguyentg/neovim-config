--[[
--	Lspconfig setup
-0:]]

return function()
	require("plugins.lsp.mappings")

	for _, lsp in ipairs(vim.g.mason_lsp_ensured_installed) do
		if pcall(require, "plugins.lsp." .. lsp) then
			-- print("Loaded " .. lsp .. " config")
		else
			local lspconfig = require("lspconfig")
			local config = require("plugins.lsp.config")

			lspconfig[lsp].setup({
				on_attach = config.on_attach,
				capabilities = config.capabilities(),
			})
			-- print("Loaded " .. lsp .. " default config")
		end
	end
end

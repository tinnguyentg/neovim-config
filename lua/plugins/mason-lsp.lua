--[[
--	mason-lspconfig setup
--]]

return function()
	require("mason-lspconfig").setup({
		ensure_installed = vim.g.mason_lsp_ensured_installed,
		automatic_installation = false,
	})
end

--[[
--	mason-lspconfig setup
--]]

return function()
	require("mason-lspconfig").setup({
		ensure_installed = {
			"bash-language-server",
			"emmet-ls",
			"intelephense",
			"pyright",
			"sumneko_lua",
			"typescript-language-server",
			"yaml-language-server",
		},
		automatic_installation = false,
	})
end

return function()
	local mason_lsp_config = require("mason-lspconfig")

	mason_lsp_config.setup({
		ensure_installed = vim.g.lsp_ensured_installed,
		automatic_installation = true,
	})
end

local lspconfig = require("lspconfig")
local config = require("plugins.lsp.config")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.lemminx.setup({
	on_attach = config.on_attach,
	capabilities = capabilities,
	settings = {
		xml = {
			format = {
				maxLineWidth = 244,
				emptyElements = "collapse",
			},
		}
	},
})

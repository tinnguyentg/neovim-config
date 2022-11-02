local lspconfig = require("lspconfig")
local config = require("plugins.lsp.config")

lspconfig.jsonls.setup({
	on_attach = config.on_attach,
	capabilities = config.capabilities(),
	settings = {
		json = {
			schemas = require('schemastore').json.schemas(),
			validate = { enable = true },
		},
	},
})

local lspconfig = require("lspconfig")
local config = require("plugins.lsp.config")

lspconfig.pylsp.setup({
	on_attach = config.on_attach,
	capabilities = config.capabilities(),
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					enabled = false,
				},
				autopep8 = {
					enabled = false,
				},
				flake8 = {
					enabled = true,
				},
			},
		},
	},
})

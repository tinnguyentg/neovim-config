local lspconfig = require("lspconfig")
local config = require("plugins.lsp.config")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.pylsp.setup({
	on_attach = config.on_attach,
	capabilities = capabilities,
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					enabled = false,
				},
				mccabe = {
					enabled = false,
				},
				pyflakes = {
					enabled = false,
				},
				flake8 = {
					enabled = true,
				},
				black = {
					enabled = true,
				},
				rope_autoimport = {
					enabled = true,
				},
			},
			configurationSources = {
				"flake8",
			},
		},
	},
})

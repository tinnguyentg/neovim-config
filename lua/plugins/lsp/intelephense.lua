local lspconfig = require("lspconfig")
local config = require("plugins.lsp.config")

lspconfig.intelephense.setup({
	on_attach = config.on_attach,
	capabilities = config.capabilities(),
})

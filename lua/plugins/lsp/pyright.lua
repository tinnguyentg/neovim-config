local lspconfig = require("lspconfig")
local config = require("plugins.lsp.config")

lspconfig.pyright.setup({
	on_attach = config.on_attach,
	capabilities = config.capabilities(),
})

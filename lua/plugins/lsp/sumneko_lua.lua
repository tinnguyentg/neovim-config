local lspconfig = require('lspconfig');
local config = require("plugins.lsp.config");

lspconfig.sumneko_lua.setup({
	on_attach=config.on_attach,
	capabilities=config.capabilities(),
}) 

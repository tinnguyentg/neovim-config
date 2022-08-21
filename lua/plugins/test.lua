local servers = require("mason-lsp").servers

for index, value in ipairs(servers) do
	print(index)
	print(value)
end

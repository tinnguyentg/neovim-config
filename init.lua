require("options")
require("maps")

if not os.getenv('SSH_CLIENT') then
	require("variables")
	require("plugins")
end

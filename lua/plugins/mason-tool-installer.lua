return function()
	require 'mason-tool-installer'.setup {
		ensure_installed = vim.g.mason_tool_installer_ensured_installed,
		run_on_start = false,
	}
end

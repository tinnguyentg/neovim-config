vim.g.clipboard = {
	name = "wsl clipboard",
	copy = { ["+"] = { "clip.exe" }, ["*"] = { "clip.exe" } },
	paste = {
		["+"] = { "nvim_paste" },
		["*"] = { "nvim_paste" },
	},
}

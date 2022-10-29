vim.g.clipboard = {
	name = "wsl clipboard",
	copy = { ["+"] = { "clip.exe" }, ["*"] = { "clip.exe" } },
	paste = {
		['+'] = { "clip.exe"},
		['*'] = { "clip.exe"}
	},
}

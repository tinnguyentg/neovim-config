--[[
--      Vim options
--
--      :help vim.opt
--
--          lua            command      global_value       local_value
-- vim.o           :set                set                set
-- vim.bo/vim.wo   :setlocal            -                 set
-- vim.go          :setglobal          set                 -
--
--]]

local opt = vim.opt

--
opt.guicursor = ""

-- Default file encoding
opt.encoding = "utf-8"

-- Show line number
opt.number = true

-- Highlight current cursor line
opt.cursorline = false

-- Show tab title
opt.titlestring = "filename"
opt.title = true

--Turn off highlight search
opt.hlsearch = false

--
opt.swapfile = false

--
opt.foldmethod = "indent"
opt.foldlevel = 1

if os.getenv("WSL_DISTRO_NAME") ~= nil then
	require("options.wsl")
end

vim.api.nvim_exec([[ autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab]], false)
vim.api.nvim_exec([[ autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab]], false)
vim.api.nvim_exec([[ autocmd FileType yml,yaml set tabstop=2|set shiftwidth=2|set expandtab]], false)
vim.api.nvim_exec([[ autocmd FileType python,xml,php,conf,bash,sh set tabstop=4|set shiftwidth=4|set expandtab]], false)
vim.api.nvim_exec([[ autocmd FileType php set foldlevel=1]], false)

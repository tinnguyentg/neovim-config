--[[
--      Keymaps
--]]

local M = {}

function M.map(mode, lhs, rhs, opts)
	opts = opts or {}
	if opts.noremap == nil then
		opts.noremap = true
	end

	if opts.silent == nil then
		opts.silent = true
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

local map = M.map

--[[
--      Insert mode maps
--]]
--map('n', '<C-S-Enter>', 'O<CR>') --
--map('n', '<C-Enter>', 'o<CR>') --
map("n", "<Enter>", "<Insert>") -- Switch to insert mode when Enter

--[[
--      Moving lines:
--       - Alt+Down: Moving lines down
--       - Alt+Up: Moving lines up
--]]
map("n", "<A-Down>", ":m .+1<CR>==")
map("n", "<A-Up>", ":m .-2<CR>==")
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi")
map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi")
map("v", "<A-Down>", ":m '>+1<CR>gv=gv")
map("v", "<A-Up>", ":m '<-2<CR>gv=gv")

--[
--      Switching tabs
--      -  Alt+Right: switch to next
--      -  Alt+Left: switch to left
--]
map("n", "<A-Right>", ":tabnext <CR>")
map("n", "<A-Left>", ":tabprevious <CR>")
map("i", "<A-Right>", "<Esc>:tabnext <CR>")
map("i", "<A-Left>", "<Esc>:tabprevious <CR>")

--[[
--      Scroll downwards maps
--]]
map("n", "<C-Down>", "<C-E>")
map("n", "<C-Up>", "<C-Y>")
map("v", "<C-Down>", "<C-E>")
map("v", "<C-Up>", "<C-Y>")

--[[
--      Save ,close, undo file maps
--]]
map("n", "<C-s>", ":w<CR>") -- Save file
map("i", "<C-s>", "<ESC>:w<CR>") -- Save file
map("n", "qq", ":q<CR>") -- Quit
map("n", "QQ", ":q!<CR>") -- Quit
map("n", "<C-z>", "<Undo>") -- Undo file
map("i", "<C-z>", "<ESC><Undo>") -- Undo file

-- map('n', '<C-f>', '/') --Search

return M

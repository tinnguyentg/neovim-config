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

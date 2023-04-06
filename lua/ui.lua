local opt = vim.opt

opt.guicursor = ""
opt.title = true
opt.number = true
opt.swapfile = false
opt.hlsearch = false


-- Set indent for filetypes
vim.cmd [[
  autocmd FileType python,xml setlocal shiftwidth=4 tabstop=4 expandtab
  autocmd FileType json,markdown setlocal shiftwidth=2 tabstop=2 expandtab
]]


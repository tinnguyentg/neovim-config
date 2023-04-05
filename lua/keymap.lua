local keymap = vim.keymap

local opts = { silent = true }

-- Normal: Press enter to insert
keymap.set("n", "<CR>", "<Insert>", opts)

-- Undo three modes
keymap.set("n", "<C-Z>", "<Undo>", opts)
keymap.set("i", "<C-Z>", "<Esc><Undo>", opts)
keymap.set("v", "<C-Z>", "<Esc><Undo>", opts)

keymap.set("n", "<C-W><C-Q>", ":q!<CR>", opts) -- Force quit
keymap.set("n", "<C-S>", ":w<CR>", opts) -- Save
keymap.set("i", "<C-S>", "<ESC>:w<CR>", opts) -- Save

-- Moving line three modes
keymap.set("n", "<A-Down>", ":m .+1<CR>==", opts)
keymap.set("n", "<A-Up>", ":m .-2<CR>==", opts)
keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", opts)
keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", opts)
keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)

keymap.set("n", "<C-a>", "<C-Home>V<C-End>", opts) -- Normal: Select all
keymap.set("i", "<C-v>", '<ESC>"+p<ESC>a', opts) -- Insert: Paste
keymap.set("v", "<C-v>", '"+p<ESC><End>a', opts) -- Visual: Paste
keymap.set("v", "<C-c>", '"+y', opts) -- Visual: copy

keymap.set("n", "<A-Right>", ":tabnext <CR>", opts)
keymap.set("n", "<A-Left>", ":tabprevious <CR>", opts)
keymap.set("i", "<A-Right>", "<Esc>:tabnext <CR>", opts)
keymap.set("i", "<A-Left>", "<Esc>:tabprevious <CR>", opts)

-- keymap.set("n", "<S-Tab>", "<<<END>", opts)
-- keymap.set("n", "<Tab>", ">><END>", opts)
keymap.set("i", "<S-Tab>", "<ESC><<^<Insert>", opts)
keymap.set("v", "<Tab>", ">", opts)
keymap.set("v", "<S-Tab>", "<", opts)


local map = vim.keymap

-- Neotree open/close
map.set('n', '<leader>e', "<cmd>Neotree<CR>")
map.set('n', '<leader>eq', "<cmd>Neotree close<CR>")

-- Run format command
map.set('n', '<leader>fm', "<cmd>LspZeroFormat<CR>")

-- Escape insert mode with C-c
map.set("i", "<C-c>", "<Esc>")

-- Save file
map.set("n", "<C-s>", "<cmd>w<CR>")

-- Move Selected lines Up/Down
map.set('v', 'J', ":m '>+1<CR>gv=gv")
map.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Append next line to end of current line without moving the cursor
map.set("n", "J", "mzJ`z")

-- Move cursor Up/Down half the page
map.set("n", "<C-d>", "<C-d>zz")
map.set("n", "<C-u>", "<C-u>zz")

-- Scroll through regex
map.set("n", "n", "nzzzv")
map.set("n", "N", "Nzzzv")

-- Selecting text
map.set("n", "<leader>vw", function()
    require("vim-with-me").StartVimWithMe()
end)
map.set("n", "<leader>svw", function()
    require("vim-with-me").StopVimWithMe()
end)

-- Paste over text withought changing clipboard
map.set("x", "<leader>p", "\"_dP")

-- Seprate vim and system clipboard
map.set("n", "<leader>y", "\"+y")
map.set("v", "<leader>y", "\"+y")
map.set("n", "<leader>Y", "\"+Y")

map.set("n", "<leader>d", "\"d")
map.set("v", "<leader>d", "\"d")


-- map.set("n", "", "")

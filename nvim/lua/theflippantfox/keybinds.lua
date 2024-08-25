local map = vim.keymap

map.set('n', '<C-n>', '<cmd>Ntree<CR>')

-- Move Selected lines Up/Down
map.set('v', 'J', ":m '>+1<CR>gv=gv")
map.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Indenting
map.set("v", "<", "<gv")
map.set("v", ">", ">gv")

-- Switching Buffers
map.set("n", "<TAB>", ":bn<CR>")
map.set("n", "<S-TAB>", ":bp<CR>")
map.set("n", "<leader>bd", ":bd<CR>") -- from Doom Emacs

-- Append next line to end of current line without g the cursor
map.set("n", "J", "mzJ`z")

map.set("n", "<C-d>", "<C-d>zz")
map.set("n", "<C-u>", "<C-u>zz")
map.set("n", "n", "nzzzv")
map.set("n", "N", "Nzzzv")

map.set("n", "<leader>e", "<cmd>NvimTreeFocus<cr>")
map.set("n", "<leader>ee", "<cmd>NvimTreeToggle<cr>")

-- Window Select Commands
map.set("n", "<C-h>", "<C-w>h")
map.set("n", "<C-j>", "<C-w>j")
map.set("n", "<C-k>", "<C-w>k")
map.set("n", "<C-l>", "<C-w>l")

-- Window Resize
map.set("n", "<C-Up>", ":resize -2<CR>")
map.set("n", "<C-Down>", ":resize +2<CR>")
map.set("n", "<C-Left>", ":vertical resize -2<CR>")
map.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Telescope
map.set("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
map.set("n", "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>")
map.set("n", "<leader>fe", "<cmd> Telescope file_browser <CR>")
map.set("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
map.set("n", "<leader>fb", "<cmd> Telescope buffers <CR>")
map.set("n", "<leader>fh", "<cmd> Telescope help_tags <CR>")
map.set("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>")
map.set("n", "<leader>fc", "<cmd> Telescope colorscheme <CR>")

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local verbose_opts = { noremap = true, silent = false }

-- Modes:
-- normal mode = "n"
-- insert mode = "i"
-- visual mode = "v"
-- visual block mode = "x"
-- term mode = "t"
-- command mode = "c"

-- set leader key
map("n", "<Space>", "<Nop>", opts)
vim.g.mapleader = " " 
vim.g.maplocalleader = " " 

-- resize splits
map("n", "<C-Up>", ":resize +3<CR>", opts)
map("n", "<C-Down>", ":resize -3<CR>", opts)
map("n", "<C-Left>", ":vertical resize +3<CR>", opts)
map("n", "<C-Right>", ":vertical resize -3<CR>", opts)

-- split navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- leader prefixed

-- windows
-- make splits
map("n", "<leader>wh", ":split<CR>", opts)
map("n", "<leader>wv", ":vsplit<CR>", opts)

-- close window
map("n", "<leader>wc", ":close<CR>", opts)

-- Equalize size of splits
map("n", "<leader>w=", "<C-w>=", opts)

-- buffers
-- got to next and previous buffers
map("n", "<leader>bn", ":bn<CR>", opts)
map("n", "<leader>bp", ":bp<CR>", opts)

-- go to first and last buffers
map("n", "<leader>bb", ":br<CR>", opts)
map("n", "<leader>BB", ":bl<CR>", opts)

-- got to next and previous buffers
map("n", "<leader>bc", ":bd<CR>", opts)

-- tabs
-- go to first and last tabs
map("n", "<leader>tt", ":tabr<CR>", opts)
map("n", "<leader>TT", ":tabl<CR>", opts)

-- go to previous and next tabs
map("n", "<leader>tn", ":tabn<CR>", opts)
map("n", "<leader>tp", ":tabp<CR>", opts)

-- close tabs
map("n", "<leader>tc", ":tabc<CR>", opts)

map("t", "<Esc>", "<C-\\><C-n>", opts)

-- TODO: move these, they belong to plugin specific settings
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fh", ":Telescope oldfiles<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fp", ":Telescope projects<CR>", opts)
map("n", "<leader>fm", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>gg", ":Git ", verbose_opts)
map("n", "<leader>ot", ":ToggleTerm<CR>", opts)
map("n", "<F2>", ":Neoformat<CR>", opts)
map("n", "<F3>", ":lua require('lint').try_lint()<CR>", opts)

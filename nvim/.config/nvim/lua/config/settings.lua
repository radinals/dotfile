local set = vim.opt
local autocmd = vim.api.nvim_create_autocmd

set.scrolloff = 999
set.sidescroll = 999

set.smartcase = true

set.splitbelow = true
set.splitright = true

set.undofile = true
set.swapfile = false

set.wildmode = { "longest", "full" }
set.completeopt = { "menuone", "noselect" }
set.shell = "/bin/bash"

set.smartindent = true
set.wrap = false

set.conceallevel = 1

set.showtabline = 1
set.laststatus = 1
set.hlsearch = false

set.showmode = false
set.number = true
set.relativenumber = true

set.spell = false
set.spelllang = { 'en_us' }

-- netrw
-- vim.g.netrw_preview = 1
-- vim.g.netrw_alto = 0
vim.g.netrw_winsize = 30
vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

autocmd("BufEnter",
  { command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o" }
)

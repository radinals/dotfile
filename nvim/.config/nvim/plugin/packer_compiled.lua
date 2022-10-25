-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/rss/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/rss/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/rss/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/rss/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rss/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/rss/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/rss/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/rss/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    after_files = { "/home/rss/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "\27LJ\2\n:\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\16qutebrowser\17mkdp_browser\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neoformat = {
    commands = { "Neoformat" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  neogit = {
    commands = { "Neogit" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nŸ\5\0\0\r\0 \00026\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1€K\0\1\0009\2\3\0015\4\4\0005\5\6\0005\6\5\0=\6\a\0055\6\b\0=\6\t\5=\5\n\0045\5\v\0=\5\f\0045\5\r\0005\6\14\0=\6\15\0056\6\16\0009\6\17\6'\b\18\0'\t\19\0'\n\20\0B\6\4\2=\6\21\5=\5\22\4B\2\2\0016\2\1\0'\4\23\0B\2\2\0026\3\0\0006\5\1\0'\6\24\0B\3\3\3\14\0\3\0X\5\1€K\0\1\0009\5\25\4\18\a\5\0009\5\26\5'\b\27\0009\t\28\0025\v\30\0005\f\29\0=\f\31\vB\t\2\0A\5\2\1K\0\1\0\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\14fast_wrap\fpattern\5\b%s+\25 [%'%\"%)%>%]%)%}%,] \tgsub\vstring\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\a\16check_comma\2\tkeys\31qwertyuiopzxcvbnmasdfghjkl\fend_key\6$\bmap\n<M-e>\voffset\3\0\14highlight\rPmenuSel\19highlight_grey\vLineNr\21disable_filetype\1\3\0\0\20TelescopePrompt\18spectre_panel\14ts_config\15javascript\1\3\0\0\vstring\20template_string\blua\1\0\1\tjava\1\1\3\0\0\vstring\vsource\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\npcall\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-lua", "cmp-path", "cmp_luasnip", "nvim-autopairs", "cmp-buffer" },
    config = { "\27LJ\2\n—\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17€6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3€+\1\1\0X\2\1€+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3À\tbody\15lsp_expandî\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\27€-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\3\1B\1\1\1X\1\18€-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\5\1B\1\1\1X\1\t€-\1\2\0B\1\1\2\15\0\1\0X\2\3€\18\1\0\0B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\3À\4À\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisibleŽ\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\r€-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5€-\1\1\0009\1\3\1)\3ÿÿB\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\3À\tjump\rjumpable\21select_prev_item\fvisibleØ\a\1\0\14\0;\0s6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1€2\0j€6\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\2\0X\4\1€2\0d€6\4\1\0'\6\4\0B\4\2\0029\4\5\4B\4\1\0013\4\6\0009\5\a\0015\a\v\0005\b\t\0003\t\b\0=\t\n\b=\b\f\a5\b\15\0009\t\r\0019\t\14\tB\t\1\2=\t\16\b9\t\r\0019\t\17\tB\t\1\2=\t\18\b9\t\r\0019\v\r\0019\v\19\v)\rÿÿB\v\2\0025\f\20\0B\t\3\2=\t\21\b9\t\r\0019\v\r\0019\v\19\v)\r\1\0B\v\2\0025\f\22\0B\t\3\2=\t\23\b9\t\r\0019\v\r\0019\v\24\vB\v\1\0025\f\25\0B\t\3\2=\t\26\b9\t\27\0019\t\28\t=\t\29\b9\t\r\0015\v\31\0009\f\r\0019\f\30\fB\f\1\2=\f \v9\f\r\0019\f!\fB\f\1\2=\f\"\vB\t\2\2=\t#\b9\t\r\0019\t$\t5\v%\0B\t\2\2=\t&\b9\t\r\0013\v'\0005\f(\0B\t\3\2=\t)\b9\t\r\0013\v*\0005\f+\0B\t\3\2=\t,\b=\b\r\a4\b\a\0005\t-\0>\t\1\b5\t.\0>\t\2\b5\t/\0>\t\3\b5\t0\0>\t\4\b5\t1\0>\t\5\b5\t2\0>\t\6\b=\b3\a5\b6\0009\t4\0019\t5\t=\t7\b=\b8\a5\b9\0=\b:\aB\5\2\0012\0\0€K\0\1\0K\0\1\0K\0\1\0\17experimental\1\0\2\16native_menu\1\15ghost_text\1\17confirm_opts\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nspell\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\14lazy_load luasnip/loaders/from_vscode\fluasnip\bcmp\frequire\npcall\0" },
    loaded = true,
    only_config = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lint"] = {
    config = { "\27LJ\2\nW\0\0\3\0\6\0\b6\0\0\0'\2\1\0B\0\2\0025\1\4\0005\2\3\0=\2\5\1=\1\2\0K\0\1\0\vpython\1\0\0\1\2\0\0\vpylint\18linters_by_ft\tlint\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/nvim-lint",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nš\1\0\0\3\0\6\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\5\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\vtexlab\vclangd\nsetup\25jedi_language_server\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n—\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\24update_focused_file\1\0\2\16update_root\2\venable\2\1\0\2\23sync_root_with_cwd\2\20respect_buf_cwd\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nvim-yati"] = {
    config = { "\27LJ\2\nd\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\tyati\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/nvim-yati",
    url = "https://github.com/yioneko/nvim-yati"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\nN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16show_hidden\1\nsetup\17project_nvim\frequire\0" },
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nk\0\0\3\0\5\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0'\2\4\0B\0\2\1K\0\1\0\rprojects\19load_extension\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    commands = { "ToggleTerm" },
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-repeat"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/rss/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-surround"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rss/.local/share/nvim/site/pack/packer/opt/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nk\0\0\3\0\5\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0'\2\4\0B\0\2\1K\0\1\0\rprojects\19load_extension\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n—\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\24update_focused_file\1\0\2\16update_root\2\venable\2\1\0\2\23sync_root_with_cwd\2\20respect_buf_cwd\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n—\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17€6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3€+\1\1\0X\2\1€+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3À\tbody\15lsp_expandî\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\27€-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\3\1B\1\1\1X\1\18€-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\5\1B\1\1\1X\1\t€-\1\2\0B\1\1\2\15\0\1\0X\2\3€\18\1\0\0B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\3À\4À\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisibleŽ\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\r€-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5€-\1\1\0009\1\3\1)\3ÿÿB\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\1À\3À\tjump\rjumpable\21select_prev_item\fvisibleØ\a\1\0\14\0;\0s6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1€2\0j€6\2\0\0006\4\1\0'\5\3\0B\2\3\3\14\0\2\0X\4\1€2\0d€6\4\1\0'\6\4\0B\4\2\0029\4\5\4B\4\1\0013\4\6\0009\5\a\0015\a\v\0005\b\t\0003\t\b\0=\t\n\b=\b\f\a5\b\15\0009\t\r\0019\t\14\tB\t\1\2=\t\16\b9\t\r\0019\t\17\tB\t\1\2=\t\18\b9\t\r\0019\v\r\0019\v\19\v)\rÿÿB\v\2\0025\f\20\0B\t\3\2=\t\21\b9\t\r\0019\v\r\0019\v\19\v)\r\1\0B\v\2\0025\f\22\0B\t\3\2=\t\23\b9\t\r\0019\v\r\0019\v\24\vB\v\1\0025\f\25\0B\t\3\2=\t\26\b9\t\27\0019\t\28\t=\t\29\b9\t\r\0015\v\31\0009\f\r\0019\f\30\fB\f\1\2=\f \v9\f\r\0019\f!\fB\f\1\2=\f\"\vB\t\2\2=\t#\b9\t\r\0019\t$\t5\v%\0B\t\2\2=\t&\b9\t\r\0013\v'\0005\f(\0B\t\3\2=\t)\b9\t\r\0013\v*\0005\f+\0B\t\3\2=\t,\b=\b\r\a4\b\a\0005\t-\0>\t\1\b5\t.\0>\t\2\b5\t/\0>\t\3\b5\t0\0>\t\4\b5\t1\0>\t\5\b5\t2\0>\t\6\b=\b3\a5\b6\0009\t4\0019\t5\t=\t7\b=\b8\a5\b9\0=\b:\aB\5\2\0012\0\0€K\0\1\0K\0\1\0K\0\1\0\17experimental\1\0\2\16native_menu\1\15ghost_text\1\17confirm_opts\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nspell\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\14lazy_load luasnip/loaders/from_vscode\fluasnip\bcmp\frequire\npcall\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\nN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16show_hidden\1\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nš\1\0\0\3\0\6\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0009\0\3\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\5\0009\0\3\0004\2\0\0B\0\2\1K\0\1\0\vtexlab\vclangd\nsetup\25jedi_language_server\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd cmp-path ]]
vim.cmd [[ packadd cmp-buffer ]]
vim.cmd [[ packadd cmp_luasnip ]]
vim.cmd [[ packadd cmp-nvim-lua ]]
vim.cmd [[ packadd nvim-treesitter ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ToggleTerm lua require("packer.load")({'toggleterm.nvim'}, { cmd = "ToggleTerm", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neogit lua require("packer.load")({'neogit'}, { cmd = "Neogit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-autopairs', 'nvim-yati'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'vim-surround', 'vim-repeat', 'nvim-lint', 'indent-blankline.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git", "clone", "--depth", "1", 
    "https://github.com/wbthomason/packer.nvim", install_path}
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
   autocmd!
   autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- Have packer manage itself

  use "nvim-lua/plenary.nvim"
  use "kyazdani42/nvim-web-devicons"

  use "mhinz/vim-startify"
  use "EdenEast/nightfox.nvim"
  use "nvim-lualine/lualine.nvim"

  use {
    "lukas-reineke/indent-blankline.nvim",
    opt = true,
    event = "BufWinEnter"
  }

  use {
    "TimUntersberger/neogit",
    opt = true,
    cmd = "Neogit"
  }

  use "tpope/vim-fugitive"

  use {"nvim-tree/nvim-tree.lua",
    config = require("plug_config.conf_nvimtree")
  }

  use {"akinsho/toggleterm.nvim", 
    config = function()
      require("toggleterm").setup()
    end,
    opt = true,
    cmd = "ToggleTerm"
  }

  use { 
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    config = require("plug_config.conf_telescope") ,
    requires = {
      {"ahmedkhalf/project.nvim",
        config = function() 
          require("project_nvim").setup{show_hidden = false} 
        end
      },
    }
  }

  use {
    "williamboman/mason.nvim", 
    config = function() require("mason").setup() end
  }

  use {
    "williamboman/mason-lspconfig.nvim",
    config = function() require("mason-lspconfig").setup() end,
  }

  use {"neovim/nvim-lspconfig",
  config = function()
    require"lspconfig".jedi_language_server.setup{}
    require"lspconfig".clangd.setup{}
    require"lspconfig".texlab.setup{}
  end}

  use {
    "hrsh7th/nvim-cmp",
    config = require("plug_config.conf_cmp"),
    requires = {
      {"rafamadriz/friendly-snippets"},
      {"L3MON4D3/LuaSnip", before = "nvim-cmp"},
      {"hrsh7th/cmp-nvim-lua", after = "nvim-cmp"},
      {"hrsh7th/cmp-nvim-lsp", before = "nvim-cmp"},
      {"hrsh7th/cmp-path", after = "nvim-cmp"},
      {"hrsh7th/cmp-buffer", after = "nvim-cmp"},
      {"f3fora/cmp-spell", before = "nvim-cmp"},
      {"saadparwaiz1/cmp_luasnip", after = "nvim-cmp"}
    }
  }

  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    after = "nvim-cmp",
    config = require("plug_config.conf_autopairs")
  }

  use {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end
  }

  use {"nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  use {"yioneko/nvim-yati",
    event = "InsertEnter",
    after = "nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup{
        yati = {enable = true}
      }
    end
  }

  use {"sbdchd/neoformat",
    opt = true,
    cmd = "Neoformat"
  }

  use {
    "mfussenegger/nvim-lint",
    event = "BufWinEnter",
    config = require("plug_config.conf_linting")
  }

	use {
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		ft = "markdown",
		config = function()
	      vim.g.mkdp_browser='qutebrowser'
    end
	}
  
  use {
    "tpope/vim-surround",
    event = "BufWinEnter"
  }

  use {
    "tpope/vim-repeat",
    event = "BufWinEnter"
  }

  use {
    "norcalli/nvim-colorizer.lua",
    cmd = "ColorizerToggle"
  }

end)

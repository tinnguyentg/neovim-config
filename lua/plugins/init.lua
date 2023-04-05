local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	-- UI
	use("nvim-tree/nvim-web-devicons")
	use({ "nvim-lualine/lualine.nvim", config = require("plugins.lualine") })
	use("folke/tokyonight.nvim")
	use("catppuccin/nvim")
	use("Mofiqul/vscode.nvim")
	use({ "ellisonleao/gruvbox.nvim", config = require("plugins.gruvbox") })

	--
	use({ "windwp/nvim-autopairs", config = require("plugins.nvim-autopairs") })

	--
	use({ "nvim-treesitter/nvim-treesitter", config = require("plugins.nvim-treesitter") })

	--
	use({ "nvim-tree/nvim-tree.lua", config = require("plugins.nvim-tree") })

	--
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})
	use("tpope/vim-fugitive")

	--
	use({ "numToStr/Comment.nvim", config = require("plugins.comment") })
	use({
		"folke/todo-comments.nvim",
		config = function()
			require("todo-comments").setup()
		end,
	})

	--
	use({ "nvim-telescope/telescope.nvim", config = require("plugins.telescope") })

	-- vim.g.lsp_ensure_installed = {}
	require("plugins.lsp")
	use({ "williamboman/mason.nvim", config = require("plugins.mason") })
	use({ "williamboman/mason-lspconfig.nvim", config = require("plugins.mason-lsp") })
	use({
		"neovim/nvim-lspconfig",
		requires = {
			{
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-cmdline",
				"hrsh7th/nvim-cmp",
				"hrsh7th/cmp-vsnip",
				"hrsh7th/vim-vsnip",
				"saadparwaiz1/cmp_luasnip",
				"L3MON4D3/LuaSnip",
			},
		},
		config = require("plugins.nvim-lspconfig"),
	})

	use({ "github/copilot.vim", config = require("plugins.copilot") })

	use({ "rest-nvim/rest.nvim", config = require("plugins.rest") })

	use({ "jackMort/ChatGPT.nvim", config = require("plugins.chatgpt"), requires = { "MunifTanjim/nui.nvim" } })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)

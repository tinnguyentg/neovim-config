--[[
--		Nvim plugins	
--]]

--[[
--		Packer bootstrapping	
--]]
local vim = vim
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap =
	fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
	vim.cmd([[packadd packer.nvim]])
end

return require("packer").startup(function(use)
	--
	use("wbthomason/packer.nvim")

	-- Gruvbox theme
	use({ "ellisonleao/gruvbox.nvim", config = require("plugins.gruvbox") })
	use({ "kyazdani42/nvim-web-devicons" })

	-- Nvim-tree
	use({
		"nvim-tree/nvim-tree.lua",
		config = require("plugins.nvim-tree"),
	})
	use("airblade/vim-gitgutter")
	use("tpope/vim-fugitive")

	-- Lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = require("plugins.lualine"),
	})

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
		config = require("plugins.telescope"),
	})

	--Auto pairs
	use({ "windwp/nvim-autopairs", config = require("plugins.autopairs") })

	--Commentary
	use({ "tpope/vim-commentary", config = require("plugins.vim-commentary") })

	-- Floaterm
	use({ "voldikss/vim-floaterm", config = require("plugins.floaterm") })

	-- Tree sitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
		config = require("plugins.treesitter"),
	})

	-- Mason, lsp, cmp config
	use({ "williamboman/mason.nvim", config = require("plugins.mason") })
	use({ "WhoIsSethDaniel/mason-tool-installer.nvim", config = require("plugins.mason-tool-installer") })
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
		config = require("plugins.lsp"),
	})

	-- Null-ls
	use({ "jose-elias-alvarez/null-ls.nvim", config = require("plugins.null-ls") })

	--
	use({ "b0o/schemastore.nvim" })

	--
	use({ "rest-nvim/rest.nvim", requires = { "nvim-lua/plenary.nvim" }, config = require("plugins.rest-nvim") })

	-- Github Copilot integration
	use({ "github/copilot.vim", config = require("plugins.copilot") })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)

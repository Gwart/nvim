require("gwart.options")
require("gwart.keymaps")
local bootstrap = require("gwart.bootstrap")
bootstrap.InstallPackageManager()

local packer = require("packer")
packer.startup(function(use)
	use "wbthomason/packer.nvim"
	use
	{
		"neovim/nvim-lspconfig",
		requires =
		{
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
	}
	use
	{
		"hrsh7th/nvim-cmp",
		requires =
		{
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip"
		}

	}
	use "folke/tokyonight.nvim"
	use
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.4",
		requires =
		{
			{"nvim-lua/plenary.nvim"}
		}
    }
	use "mfussenegger/nvim-dap"
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
	use "jay-babu/mason-nvim-dap.nvim"
	use
	{
		"akinsho/toggleterm.nvim", tag = '*',
		config =
		function()
			require("toggleterm").setup()
		end
	}
    use "nvim-tree/nvim-tree.lua"
end)

if bootstrap.isBootstrap then
	packer.sync()
	print("Wait for the packer sync and restart nvim")
	return
end

vim.cmd[[colorscheme tokyonight-night]]

require("gwart.lspconf").setup()
require("telescope").setup{}
require("gwart.dapconf").setup()
require("gwart.nvimtreeconf").setup()

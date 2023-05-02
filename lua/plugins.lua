require('packer').startup(function(use)
  	use 'wbthomason/packer.nvim'

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	-- package manager for neovim
	use "williamboman/mason.nvim"

	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

	-- color scheme 
	use "rebelot/kanagawa.nvim"

	-- autocomplete
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin
	

	-- File explorer tree
	-- use {
	--  	'nvim-tree/nvim-tree.lua',
	--  	requires = {
	--  	  'nvim-tree/nvim-web-devicons', -- optional, for file icons
	--  	},
	-- 	}
	use {
	  "nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		winbar = true,
        statusline = false,

		requires = { 
		  "nvim-lua/plenary.nvim",
		  "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		  "MunifTanjim/nui.nvim",
			}
    	}

	-- syntax highlight -> Treesitter
	 use {
	  -- recommended packer way of installing it is to run this function, copied from documentation
		'nvim-treesitter/nvim-treesitter',
		run = function()
				local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
				ts_update()
			 end,

	 }

	
	-- DAP for debugging
	use 'mfussenegger/nvim-dap'
	
	-- UI for DAP
 	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

	-- linter 
	use 'mfussenegger/nvim-lint'

	--formatter
	use 'mhartington/formatter.nvim' 

	-- Dracula theme for styling
	 use 'Mofiqul/dracula.nvim'

	 -- Lualine information / Status bar
	 use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	 }

	 -- tab bar
	 use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

	 -- toggle terminal
	 use {"akinsho/toggleterm.nvim", tag = '*'}

	 -- auto pairs
	 use {
		"windwp/nvim-autopairs",
    	config = function() require("nvim-autopairs").setup {} end
	 }

	 -- floatin hover docs
	 use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			require("lspsaga").setup({})
		end,
		requires = {
			{"nvim-tree/nvim-web-devicons"},
			--Please make sure you install markdown and markdown_inline parser
			{"nvim-treesitter/nvim-treesitter"}
	}


})

end)

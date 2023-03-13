require('packer').startup(function(use)
  	use 'wbthomason/packer.nvim'

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	-- code completion 
	use 'williamboman/mason.nvim'   
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'

	-- Hrsh7th Code Completion Suite
    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'

	-- File explorer tree
	--[[ 	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
		  'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
 	} ]]

	use {
	  "nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = { 
		  "nvim-lua/plenary.nvim",
		  "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		  "MunifTanjim/nui.nvim",
		}
	  }
		
	-- DAP for debugging
	use 'mfussenegger/nvim-dap'

	-- UI for DAP
 	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

	-- Dracula theme for styling
	 use 'Mofiqul/dracula.nvim'

	 -- Lualine information / Status bar
	 use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	 }

	 -- tab bar
	 use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

end)

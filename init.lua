-- line numbering 
vim.opt.number = true
vim.opt.relativenumber = true

-- mouse 
vim.opt.mouse = 'a'

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true --[[combined with ignorecase, ignores uppercase 
						until our search word has uppercase letter]]
vim.opt.hlsearch = false -- if true(default), highlight the result of previous search

-- tab 
vim.opt.tabstop = 4 -- amount of space on screen a tab character can occupy, default is 8
vim.opt.shiftwidth = 4 -- amount of character neovim will use to indent a line	
-- vim.opt.softtabstop = 4
-- vim.opt.autoindent = true

-- ruler 
vim.opt.colorcolumn = "80"

-- clipboard
vim.opt.clipboard = unnamedplus

-- packer 
return require('packer').startup(function(use)
  	use 'wbthomason/packer.nvim'

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		'nvim-tree/nvim-web-devicons', -- optional, for file icons
	  },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

end)
	

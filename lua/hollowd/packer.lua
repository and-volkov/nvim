vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use "nvim-lua/plenary.nvim" 

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use { 'rose-pine/neovim', as = 'rose-pine' }

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

	use 'mbbill/undotree'

	use 'tpope/vim-fugitive'

end)

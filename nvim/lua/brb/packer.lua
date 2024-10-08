vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  --use({
  --    'rose-pine/neovim',
  --    as = 'rose-pine',
  --    config = function()
  --  	  -- vim.cmd('colorscheme rose-pine')
  --  	  vim.cmd('colorscheme quiet')
  --    end
  --})

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('tpope/vim-rhubarb')

  use('fxn/vim-monochrome')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use {
	  "folke/zen-mode.nvim",
	  config = function()
		  require("zen-mode").setup {
			  -- your configuration comes here
			  -- or leave it empty to use the default settings
			  -- refer to the configuration section below
		  }
	  end
  }

  use {
	  'stevearc/aerial.nvim',
	  config = function() require('aerial').setup() end
  }


  use 'sindrets/diffview.nvim'
  use 'nvim-tree/nvim-web-devicons'

  use {'nvim-orgmode/orgmode', config = function()
    require('orgmode').setup{}
  end
  }

end)

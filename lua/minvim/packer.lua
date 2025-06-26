-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
  	'nyoom-engineering/oxocarbon.nvim',
	config = function()
		vim.cmd('colorscheme oxocarbon')
	end
  })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
  }
  use 'lewis6991/gitsigns.nvim'
  use {
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'onsails/lspkind.nvim',
  }
  use {'L3MON4D3/LuaSnip', run="make install_jsregex"}
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }
end)

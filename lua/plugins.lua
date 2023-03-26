vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	-- self contain packer plugin manager
	use 'wbthomason/packer.nvim'

	-- color shceme
	use 'folke/tokyonight.nvim'
	use 'navarasu/onedark.nvim'

	-- markdown preview
	use 'iamcco/markdown-preview.nvim'

	-- centralization view
	use 'junegunn/goyo.vim'

	-- smooth scroll
	use 'karb94/neoscroll.nvim'

	-- indent line
	use 'lukas-reineke/indent-blankline.nvim'

	-- file explorer
	use { 'nvim-tree/nvim-tree.lua', tag = 'nightly' }

	-- statue line
	use { 'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- code color (import local manually installed plugin)
	use '~/.local/share/nvim/site/pack/packer/start/vim-hexokinase'

	-- webhdevicons
	use 'nvim-tree/nvim-web-devicons'

	-- completion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'

	-- LuaSnip
	use "L3MON4D3/LuaSnip"
	use 'saadparwaiz1/cmp_luasnip'

	-- a collection of LSP configs
	use 'neovim/nvim-lspconfig' 
end)

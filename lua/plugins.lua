vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'
	use 'rstacruz/vim-closer'
	use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
	use {'andymass/vim-matchup', event = 'VimEnter'}
	use {
		'w0rp/ale',
		ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
		cmd = 'ALEEnable',
		config = 'vim.cmd[[ALEEnable]]'
	}
--	use {
--		'my/supercoolplugin',
--		rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
--	}
	use_rocks 'penlight'
	use_rocks {'lua-resty-http', 'lpeg'}
--	use '~/projects/personal/hover.nvim'
	use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use {'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
	use {
		'glepnir/galaxyline.nvim',
		branch = 'main',
		config = function() require'statusline' end,
		requires = {'kyazdani42/nvim-web-devicons'}
	}
	use {
		'lewis6991/gitsigns.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function() require('gitsigns').setup() end
	}
	use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}
	use {'dracula/vim', as = 'dracula'}

end)


-------------------------------------


-------------------------------------

-- vim.cmd.packadd "packer.nvim"

-- add ~/.config/nvim/plugins.lua
-- 	requireXX
-- 	use "plugin name"
-- play :PackerInstall

-- require("packer").startup(function()
-- 	use "neoclide/coc.nvim"
-- end)

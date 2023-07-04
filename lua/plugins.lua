vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	--default plugins
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
	use {
		'haorenw1025/completion-nvim',
		opt = true,
		requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
	}
	use_rocks 'penlight'
	use_rocks {'lua-resty-http', 'lpeg'}
	use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
	use {'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
	use {
		'glepnir/galaxyline.nvim',
		branch = 'main',
		config = function() require'my_statusline' end,
		requires = {'nvim-tree/nvim-web-devicons', opt = true}
	}
	use {
		'lewis6991/gitsigns.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function() require('gitsigns').setup() end
	}
	use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}
	use {'dracula/vim', as = 'dracula'}

	--add plugins
	use {
		'nvim-telescope/telescope.nvim',
		tab = '0.1.2',
		requires = { {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'} }
	}
	use 'nvim-telescope/telescope-fzy-native.nvim'
	
	use 'airblade/vim-gitgutter'
	use 'lambdalisue/fern-git-status.vim'
	use 'echasnovski/mini.indentscope'
	use 'folke/tokyonight.nvim'
	use 'kdheepak/tabline.nvim'
	use {
		'nvim-lualine/lualine.nvim',
		reqiures = {'nvim-tree/nvim-web-devicons', opt = true}
	}
	use 'tpope/vim-surround'
	use 'junegunn/rainbow_parentheses.vim'
	use 'ryanoasis/vim-devicons'
	use 'beauwilliams/statusline.lua'
	use 'tpope/vim-commentary'
	use 'nvim-telescope/telescope-frecency.nvim'
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use 'lambdalisue/fern.vim'
	use 'lambdalisue/nerdfont.vim'
	use 'lambdalisue/fern-renderer-nerdfont.vim'
	use 'tomasiser/vim-code-dark'
	use {
	  'neoclide/coc.nvim',
	  branch = 'release'
	}
	use {
		'junegunn/fzf',
		run = function() vim.fn['fzf#install']() end
	}
	use {
	  'yuki-yano/fzf-preview.vim',
	  branch = 'release/remote',
	  run = ':UpdateRemotePlugins'
	}
end)

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- SELECT MODULE
	---- [インデントレベルに基づいてコードのスコープを可視化]
	---- use 'echasnovski/mini.indentscope'
	---- [color scheme]
	---- use 'tomasiser/vim-code-dark'

	-- PackerXXX
	use 'wbthomason/packer.nvim'

	-- 自動コード解析し、エラーや警告を表示、リンターやフォーマッターと連携
	use {
		'w0rp/ale',
		ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
		cmd = 'ALEEnable',
		config = 'vim.cmd[[ALEEnable]]'
	}

	-- 対応する括弧やタグの視覚的なマッチ
	use {'andymass/vim-matchup', event = 'VimEnter'}

	-- 括弧や中括弧などのカッコを視覚的に強調表示
	use 'junegunn/rainbow_parentheses.vim'

	-- 変数、関数、キーワードなどの補完候補をリアルタイムで表示し、入力を補完
	use {
		'haorenw1025/completion-nvim',
		opt = true,
		requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
	}
	
	-- さまざまなソースからデータを検索し、結果をインタラクティブに表示 高機能な拡張機能検索フレームワーク。
	use {
		'nvim-telescope/telescope.nvim',
		tab = '0.1.2',
		requires = { {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'} }
	}
	use 'nvim-telescope/telescope-frecency.nvim'
	use 'nvim-telescope/telescope-fzy-native.nvim'
	
	-- ディレクトリ内のファイルをフィルタリングして検索
	use {
		'junegunn/fzf',
		run = function() vim.fn['fzf#install']() end
	}
	-- fzfで選択したファイルや項目のプレビューを表示
	use {
	  'yuki-yano/fzf-preview.vim',
	  branch = 'release/remote',
	  run = ':UpdateRemotePlugins'
	}

	-- fernでnerdfontを使用できるようにする拡張
	use 'lambdalisue/fern-renderer-nerdfont.vim'

	--FernとGitを統合する。Fern上でGitリポジトリの状態を確認できる
	use 'lambdalisue/fern-git-status.vim'

	-- タブライン(エディタ上部に表示されるタブの一覧)をカスタマイズする
	use 'kdheepak/tabline.nvim'

	-- 高機能なステータスライン(バッファ、モード、ファイル情報などの状態を表示)のカスタマイズ
	use {
		'nvim-lualine/lualine.nvim',
		reqiures = {'nvim-tree/nvim-web-devicons', opt = true}
	}

	-- ファイルタイプや拡張子に応じてアイコンを表示する
	use 'ryanoasis/vim-devicons'
	
	-- 選択したテキストや行をコメントアウト、コメント解除
	use 'tpope/vim-commentary'

	-- ファイルの一覧表示機能。
	use 'lambdalisue/fern.vim'

	-- 特殊文字のフォント
	use 'lambdalisue/nerdfont.vim'

	-- vscode -> neovim
	use {
	  'neoclide/coc.nvim',
	  branch = 'release'
	}

	-- 括弧や引用符を追加、削除、変更するなどの操作
	use 'tpope/vim-surround'

	-- color scheme
	use 'folke/tokyonight.nvim'

	-- 必要なモジュールのインストール。HTMLなどの言語のサポート機能
	use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
end)
-- use 'rstacruz/vim-closer'
-- use {'hrsh7th/nvim-cmp',requires = {'hrsh7th/cmp-buffer','hrsh7th/cmp-nvim-lsp',}}
-- use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
-- use {'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
-- use {'glepnir/galaxyline.nvim',branch = 'main',config = function() require'my_statusline' end,requires = {'nvim-tree/nvim-web-devicons', opt = true}}
-- use {'lewis6991/gitsigns.nvim',requires = { 'nvim-lua/plenary.nvim' },config = function() require('gitsigns').setup() end}
-- use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}
-- use 'airblade/vim-gitgutter'

-- カスタムステータスライン（ステータスバー）を作成するためのLuaモジュール
-- use 'beauwilliams/statusline.lua'

-- ステータスラインを表示し、現在のバッファ、モード、ファイル情報などを豊富に表示
-- use 'vim-airline/vim-airline'
-- use 'vim-airline/vim-airline-themes'

-- 必要なモジュールのインストール。
-- use_rocks 'penlight'
-- use_rocks {'lua-resty-http', 'lpeg'}

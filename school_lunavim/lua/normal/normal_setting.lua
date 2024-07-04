-- leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

--normal setting
vim.opt.expandtab = false
vim.opt.encoding = 'utf-8'
vim.opt.history = 100
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.showtabline = 2
vim.opt.matchtime = 1
vim.opt.laststatus = 2
vim.opt.cmdheight = 0
vim.opt.list = false
vim.opt.ignorecase = true
vim.opt.wrap = true
vim.opt.showcmd = true
vim.opt.ambiwidth = 'double'
vim.opt.display = 'lastline'
vim.opt.visualbell = true
vim.opt.showmatch = true
vim.opt.helplang = 'ja', 'en'
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.mouse = 'a'
vim.opt.swapfile = false
vim.opt.wildmenu = true
vim.opt.ruler = true
vim.opt.clipboard:append({'unnamedplus'})
--cursor
vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

--move
vim.opt.whichwrap = 'b,s,h,l,<,>,~,[,]'

--side number
vim.opt.number = true
-- vim.opt.relativenumber = true

vim.opt.background = 'dark'

--search
vim.opt.hlsearch = true
vim.opt.incsearch = true

--補完の透明度
vim.opt.winblend = 20
vim.opt.pumblend = 20

--side column
-- vim.opt.signcolumn = 'yes'

-- buffer
local bufnr = vim.api.nvim_get_current_buf()
vim.api.nvim_buf_set_option(bufnr, 'modifiable', true)


vim.cmd('syntax on')
vim.cmd('highlight VertSplit cterm=none')
vim.cmd('highlight Comment ctermfg=6')
vim.cmd('set clipboard=unnamed,unnamedplus')
vim.cmd('colorscheme tokyonight-night')

-- コメントにマゼンダを設定
vim.cmd("hi Comment guifg=#FF00FF ctermfg=5")
-- 行番号にレッドを設定
vim.cmd("hi LineNr guifg=#00FF00 ctermfg=5")
-- 行番号の今いる行番号を黒に設定
vim.cmd("hi CursorLineNr guifg=#FF0000 ctermfg=5")
-- 文字列を黄緑に設定
vim.cmd("hi String guifg=#88FF88 ctermfg=5")

-- 42header
vim.g.user42 = 'rikeda'
vim.g.mail42 = 'rikeda@student.42tokyo.jp'

-- markdownプラグインのデフォルトでchromeを呼び出す
vim.g.previm_open_cmd = 'open -a "Google Chrome"'


-- hexHighlightプラグインを有効にする
vim.g.colorizer_auto_filetype = 1
vim.g.colorizer_auto_refresh_by_updatetime = 0

-- BufWinEnter、WinEnter、BufReadイベントに対して自動的にColorHighlightを実行
vim.cmd[[au BufWinEnter,WinEnter,BufRead * ColorHighlight]]

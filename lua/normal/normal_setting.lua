--leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

--normal setting
vim.opt.encoding = 'utf-8'
vim.opt.history = 100
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.whichwrap = 'b,s,h,l,<,>,~,[,]'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.list = false
vim.opt.ignorecase = true
vim.opt.background = 'light'
vim.opt.wrap = true
vim.opt.showcmd = true
vim.opt.ambiwidth = 'double'
vim.opt.display = 'lastline'
vim.opt.visualbell = true
vim.opt.showmatch = true
vim.opt.matchtime = 1
vim.opt.helplang = 'ja', 'en'
vim.opt.showtabline = 2

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.mouse = 'a'
vim.opt.swapfile = false
vim.opt.wildmenu = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 2

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.matchtime = 1
vim.opt.winblend = 100
vim.opt.pumblend = 100
vim.opt.signcolumn = 'yes'

vim.opt.ruler = true

vim.cmd('syntax on')
vim.cmd('highlight VertSplit cterm=none')
vim.cmd('highlight Comment ctermfg=6')
vim.cmd('set clipboard=unnamed,unnamedplus')

vim.cmd('packadd! coc.nvim')
vim.cmd('autocmd VimEnter * CocStart')
vim.cmd('colorscheme tokyonight-night')
vim.g['fern#renderer'] = 'nerdfont'

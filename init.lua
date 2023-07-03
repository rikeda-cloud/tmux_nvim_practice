require "plugins"
require "normal_setting"
require "c_setting"
require "python_setting"
require "keymap"


--normal setting
--vim.opt.encoding = 'utf-8'
--vim.opt.history = 100
--vim.opt.cursorline = true
--vim.opt.whichwrap = 'b,s,h,l,<,>,~,[,]'
--vim.opt.number = true
--vim.opt.relativenumber = true
--vim.opt.tabstop = 4
--vim.opt.shiftwidth = 4
--vim.opt.softtabstop = 4
--vim.opt.list = false
--vim.opt.ignorecase = true
--vim.opt.background = 'light'
--vim.opt.wrap = true
--vim.opt.showcmd = true
--vim.opt.ambiwidth = 'double'
--vim.opt.display = 'lastline'
--vim.cmd('syntax on')
--vim.cmd('highlight Comment ctermfg=6')
--vim.cmd('set clipboard=unnamed,unnamedplus')

--normal keymap
--vim.api.nvim_set_keymap('n', 'wq', ':wq<CR>', {noremap = true})
--vim.api.nvim_set_keymap('n', 'qq', ':q!<CR>', {noremap = true})
--vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true})
--vim.api.nvim_set_keymap('n', 'DD', ':%d<CR>', {noremap = true})
--vim.api.nvim_set_keymap('n', 'top', '0', {noremap = true})
--vim.api.nvim_set_keymap('n', 'end', '$', {noremap = true})
--vim.api.nvim_set_keymap('n', '<S-k>', ':m -2<CR>', {noremap = true})
--vim.api.nvim_set_keymap('n', '<S-j>', ':m +1<CR>', {noremap = true})
--vim.api.nvim_set_keymap('n', 'U', '<C-r>', {noremap = true})
--vim.api.nvim_set_keymap('i', '(', '()<left>', {noremap = true})
--vim.api.nvim_set_keymap('i', '{', '{}<left>', {noremap = true})
--vim.api.nvim_set_keymap('i', '[', '[]<left>', {noremap = true})
--vim.api.nvim_set_keymap('i', '\'', '\'\'<left>', {noremap = true})
--vim.api.nvim_set_keymap('i', '"', '""<left>', {noremap = true})
--vim.api.nvim_set_keymap('n', '+', '<C-p>', {noremap = true})
--vim.api.nvim_set_keymap('n', '-', '<C-m>', {noremap = true})


--clang setting
--if vim.fn.expand('%:e') == 'c' then
--	vim.api.nvim_set_keymap('n', 'main', 'Go<lf>int<TAB>main (void)<lf>{<lf><lf>return (0);<lf>}<ESC>kka<TAB>', {noremap = true})
--	vim.api.nvim_set_keymap('i', 'print', 'printf("");<left><left><left>', {noremap = true})
--	vim.api.nvim_set_keymap('n', 'write', 'a<TAB>write(1, "a\n", 2);<ESC>', {noremap = true})
--	vim.api.nvim_set_keymap('n', 'std', 'O#include <stdio.h><lf>', {noremap = true})
--end

--python setting
--if vim.fn.expand('%:e') == 'py' then
--	vim.api.nvim_set_keymap('n', 'main', 'Goif __name__ == \"__main__\":<lf>', {noremap = true})
--	vim.api.nvim_set_keymap('i', 'print', 'iprint("")<left><left>', {noremap = true})
--end

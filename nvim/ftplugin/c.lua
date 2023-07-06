--c.lua

-- setting
vim.bo.autoindent = true
vim.bo.expandtab = false
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4

--keymap
vim.api.nvim_set_keymap('n', 'main', 'Go<lf>int<TAB>main (void)<lf>{<lf><lf>return (0);<lf>}<ESC>kka<TAB>', {noremap = true})
vim.api.nvim_set_keymap('i', 'print', 'printf("");<left><left><left>', {noremap = true})
vim.api.nvim_set_keymap('n', 'write', 'a<TAB>write(1, "a\n", 2);<ESC>', {noremap = true})
vim.api.nvim_set_keymap('n', 'std', 'O#include <stdio.h><lf>', {noremap = true})
vim.api.nvim_set_keymap('i', 'for', 'for (int i = 0; i < 100; i++)<lf>{<lf><lf>}<up><TAB><TAB>', {noremap = true})
vim.api.nvim_set_keymap('i', 'while', 'while ()<left>', {noremap = true})
vim.api.nvim_set_keymap('i', 'if', 'if ()<left>', {noremap = true})
vim.api.nvim_set_keymap('n', 'def', 'O#define ', {noremap = true})
vim.api.nvim_set_keymap('n', 'inc', 'O#include ', {noremap = true})
vim.api.nvim_set_keymap('i', 'int', 'int<TAB>', {noremap = true})
vim.api.nvim_set_keymap('i', 'void', 'void<TAB>', {noremap = true})
vim.api.nvim_set_keymap('i', 'char', 'char<TAB>', {noremap = true})
vim.api.nvim_set_keymap('i', 'bool', 'bool<TAB>', {noremap = true})
vim.api.nvim_set_keymap('i', 'sizet', 'size_t<TAB>', {noremap = true})

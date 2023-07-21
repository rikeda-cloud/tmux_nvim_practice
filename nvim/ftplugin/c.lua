--c.lua
--
-- setting
vim.bo.autoindent = true
vim.bo.expandtab = false
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4

--keymap
vim.api.nvim_set_keymap('n', '<Leader>main', 'Go<lf>int<TAB>main (void)<lf>{<lf><lf>return (0);<lf>}<ESC>kka<TAB>', {noremap = true})
-- vim.api.nvim_set_keymap('n', 'std', 'O#include <stdio.h><lf>', {noremap = true})
-- vim.api.nvim_set_keymap('n', '<Leader>for', 'for (int i = 0; i < ; i++)<lf>{<lf><lf>}<up><TAB><TAB>', {noremap = true})
vim.api.nvim_set_keymap('i', 'while', 'while ()<left>', {noremap = true})
-- vim.api.nvim_set_keymap('i', '<leader>if', 'if ()<left>', {noremap = true})
-- vim.api.nvim_set_keymap('i', '<Leader>def', '#define ', {noremap = true})
-- vim.api.nvim_set_keymap('n', '<Leader>inc', '#include ', {noremap = true})
-- vim.api.nvim_set_keymap('i', '<Leader>int', 'int<TAB>', {noremap = true})
-- vim.api.nvim_set_keymap('i', '<Leader>void', 'void<TAB>', {noremap = true})
-- vim.api.nvim_set_keymap('i', '<Leader>char', 'char<TAB>', {noremap = true})
-- vim.api.nvim_set_keymap('i', '<Leader>bool', 'bool<TAB>', {noremap = true})
-- vim.api.nvim_set_keymap('i', '<Leader>size', 'size_t<TAB>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>p', 'oprintf("");<left><left><left>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>w', 'owrite(1, "a", 1);<ESC>', {noremap = true})

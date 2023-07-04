--clang setting
if vim.fn.expand('%:e') == 'c' then
	vim.api.nvim_set_keymap('n', 'main', 'Go<lf>int<TAB>main (void)<lf>{<lf><lf>return (0);<lf>}<ESC>kka<TAB>', {noremap = true})
	vim.api.nvim_set_keymap('i', 'print', 'printf("");<left><left><left>', {noremap = true})
	vim.api.nvim_set_keymap('n', 'write', 'a<TAB>write(1, "a\n", 2);<ESC>', {noremap = true})
	vim.api.nvim_set_keymap('n', 'std', 'O#include <stdio.h><lf>', {noremap = true})
end

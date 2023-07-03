--python setting
if vim.fn.expand('%:e') == 'py' then
	vim.api.nvim_set_keymap('n', 'main', 'Goif __name__ == \"__main__\":<lf>', {noremap = true})
	vim.api.nvim_set_keymap('i', 'print', 'iprint("")<left><left>', {noremap = true})
end

vim.api.nvim_set_keymap('n', '<Space><Space>', ':<C-u>CocList<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Space>h', ':<C-u>call CocAction("doHover")<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<Space>df', '<Plug>(coc-definition)', { silent = true })
vim.api.nvim_set_keymap('n', '<Space>rf', '<Plug>(coc-references)', { silent = true })
vim.api.nvim_set_keymap('n', '<Space>rn', '<Plug>(coc-rename)', { silent = true })
vim.api.nvim_set_keymap('n', '<Space>fmt', '<Plug>(coc-format)', { silent = true })

-----------airline setting-----------------
vim.api.nvim_set_keymap('n', '<C-n>', ":Fern . -reveal=% -drawer -toggle -width=40<CR>", { silent = true })

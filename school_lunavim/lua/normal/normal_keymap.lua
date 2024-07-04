--normal keymap
-- vim.api.nvim_set_keymap('n', 'wq', ':wq<CR>', {noremap = true})
-- vim.api.nvim_set_keymap('n', 'ww', ':w<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>wq', ':wq<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>ww', ':w<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'qq', ':q!<CR>', {noremap = true})
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true})
vim.api.nvim_set_keymap('n', 'DD', ':%d<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'U', '<C-r>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-t>', '<Tab>', {noremap = true})

vim.api.nvim_set_keymap('n', '<S-k>', ':m -2<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<S-j>', ':m +1<CR>', {noremap = true})

vim.api.nvim_set_keymap('i', '(', '()<left>', {noremap = true})
vim.api.nvim_set_keymap('i', '{', '{}<left>', {noremap = true})
vim.api.nvim_set_keymap('i', '[', '[]<left>', {noremap = true})
vim.api.nvim_set_keymap('i', '\'', '\'\'<left>', {noremap = true})
vim.api.nvim_set_keymap('i', '"', '""<left>', {noremap = true})

vim.api.nvim_set_keymap('n', '+', '<C-a>', {noremap = true})
vim.api.nvim_set_keymap('n', '-', '<C-x>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>h', '^', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>j', '}', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>k', '{', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>l', '$', {noremap = true})

-- tab jamp
vim.api.nvim_set_keymap('n', '<C-h>', ':bprev<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', ':bnext<CR>', {noremap = true})

-- window jamp
-- vim.api.nvim_set_keymap('n', '<C-w>h', prev, {noremap = true})
-- vim.api.nvim_set_keymap('n', '<C-w>l', next, {noremap = true})

-- window split
vim.api.nvim_set_keymap('n', '<Leader>\\', ':vs<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>-', ':sp<CR>', {noremap = true})


-- live_grep
vim.api.nvim_set_keymap('n', '<Leader>gr', '<CMD>Telescope live_grep<CR>', {noremap = true})
vim.keymap.set('n', '<Leader>re',":cdo s//g | update<left><left><left><left><left><left><left><left><left><left><left>" , {})

-- rename
vim.api.nvim_set_keymap('n', '<Leader>ren', '<cmd>lua vim.lsp.buf.rename()<cr>', {noremap = true})

-- 42header
vim.api.nvim_set_keymap('n', '<Leader>42', ':Stdheader<CR>', {noremap = true})

-- markdown
vim.api.nvim_set_keymap('n', '<Leader>mark', ':PrevimOpen<CR>', {noremap = true})

--
--coc extensions

vim.api.nvim_set_keymap('n', '<Leader>f', ':<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>', { silent = true })
vim.api.nvim_set_keymap('x', '<Leader>f', ':<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>', { silent = true })

vim.api.nvim_set_keymap('n', '[fzf-p]p', ':<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '[fzf-p]gs', ':<C-u>CocCommand fzf-preview.GitStatus<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '[fzf-p]ga', ':<C-u>CocCommand fzf-preview.GitActions<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '[fzf-p]b', ':<C-u>CocCommand fzf-preview.Buffers<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '[fzf-p]B', ':<C-u>CocCommand fzf-preview.AllBuffers<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '[fzf-p]o', ':<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '[fzf-p]<C-o>', ':<C-u>CocCommand fzf-preview.Jumps<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '[fzf-p]g;', ':<C-u>CocCommand fzf-preview.Changes<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '[fzf-p]/', ':<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="\'"<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '[fzf-p]*', ':<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="\'" .. vim.fn.expand("<cword>")<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '[fzf-p]gr', ':<C-u>CocCommand fzf-preview.ProjectGrep<Space>', {})
vim.api.nvim_set_keymap('x', '[fzf-p]gr', [["sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>" .. vim.fn.substitute(vim.fn.substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>]], {})
vim.api.nvim_set_keymap('n', '[fzf-p]t', ':<C-u>CocCommand fzf-preview.BufferTags<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '[fzf-p]q', ':<C-u>CocCommand fzf-preview.QuickFix<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '[fzf-p]l', ':<C-u>CocCommand fzf-preview.LocationList<CR>', { silent = true })


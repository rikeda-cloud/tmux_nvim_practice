-- fzf_preview_direct_window_option
vim.g.fzf_preview_direct_window_option = ''

-- fzf command default options
vim.g.fzf_preview_default_fzf_options = { ['--reverse'] = true, ['--preview-window'] = 'wrap' }

-- Add fzf quit mapping
vim.g.fzf_preview_quit_map = 1

-- jump to the buffers by default, when possible
vim.g.fzf_preview_buffers_jump = 0

-- Commands used for fzf preview.
-- The file name selected by fzf becomes {}
vim.g.fzf_preview_command = 'cat' -- Not installed bat
-- vim.g.fzf_preview_command = 'bat --color=always --plain {-1}' -- Installed bat

-- g:fzf_binary_preview_command is executed if this command succeeds, and g:fzf_preview_command is executed if it fails
vim.g.fzf_preview_if_binary_command = [[ "$(file --mime {})" =~ binary ]]

-- Commands used for binary file
vim.g.fzf_binary_preview_command = 'echo "{} is a binary file"'

-- Commands used to get the file list from project
vim.g.fzf_preview_filelist_command = 'git ls-files --exclude-standard' -- Not Installed ripgrep
-- vim.g.fzf_preview_filelist_command = 'rg --files --hidden --follow --no-messages -g \!"* *"' -- Installed ripgrep

-- Commands used to get the file list from git repository
vim.g.fzf_preview_git_files_command = 'git ls-files --exclude-standard'

-- Commands used to get the git status file list
vim.g.fzf_preview_git_status_command = 'git -c color.status=always status --short --untracked-files=all'

-- Commands used for git status preview.
vim.g.fzf_preview_git_status_preview_command = "[[ $(git diff --cached -- {-1}) != \"\" ]] && git diff --cached --color=always -- {-1} || " ..
                                               "[[ $(git diff -- {-1}) != \"\" ]] && git diff --color=always -- {-1} || " ..
                                               vim.g.fzf_preview_command

-- Commands used for project grep
vim.g.fzf_preview_grep_cmd = 'rg --line-number --no-heading --color=never --hidden'

-- MRU and MRW cache directory
vim.g.fzf_preview_cache_directory = vim.fn.expand('~/.cache/vim/fzf_preview')

-- If this value is not 0, disable mru and mrw
vim.g.fzf_preview_disable_mru = 0

-- Limit of the number of files to be saved by mru
vim.g.fzf_preview_mru_limit = 1000

-- Commands used for current file lines
vim.g.fzf_preview_lines_command = 'cat -n' -- Not Installed bat
-- vim.g.fzf_preview_lines_command = 'bat --color=always --plain --number' -- Installed bat

-- Commands used for preview of the grep result
vim.g.fzf_preview_grep_preview_cmd = vim.fn.expand('<sfile>:h:h') .. '/bin/preview_fzf_grep'

-- Cache directory for mru and mrw
vim.g.fzf_preview_cache_directory = vim.fn.expand('~/.cache/vim/fzf_preview')

-- Keyboard shortcuts while fzf preview is active
vim.g.fzf_preview_preview_key_bindings = ''
-- vim.g.fzf


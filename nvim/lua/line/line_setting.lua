--lualine setting--
require('lualine').setup()
--tabline setting--
require('tabline').setup()

-- -- airline setting--
-- vim.g.airline_extensions_tabline_enabled = 1
-- vim.g.airline_extensions_default_layout = {
--   { 'a', 'b', 'c' },
--   { 'z' }
-- }
-- vim.g.airline_section_c = '%t %M'
-- vim.g.airline_section_z = vim.fn.get(vim.g, 'airline_linecolumn_prefix', '') .. '%3l:%-2v'
-- vim.g.airline_extensions_hunks_non_zero_only = 1

-- vim.g.airline_extensions_tabline_fnamemod = ':t'
-- vim.g.airline_extensions_tabline_show_buffers = 1
-- vim.g.airline_extensions_tabline_show_splits = 0
-- vim.g.airline_extensions_tabline_show_tabs = 1
-- vim.g.airline_extensions_tabline_show_tab_nr = 0
-- vim.g.airline_extensions_tabline_show_tab_type = 1
-- vim.g.airline_extensions_tabline_show_close_button = 0
-- vim.g.airline_powerline_fonts = 1 

-- -- Airlineのセパレーターを設定
-- vim.g.airline_left_sep = '»'
-- vim.g.airline_right_sep = '«'

-- -- Airlineのシンボルを設定
-- vim.g.airline_symbols = {
--   crypt = '🔒',
--   linenr = '␊',
--   maxlinenr = '☰',
--   branch = '⎇',
--   paste = 'ρ',
--   spell = 'Ꞩ',
--   notexists = '∄',
--   whitespace = 'Ξ'
-- }

-- -- theme
-- vim.g.airline_theme = 'luna'

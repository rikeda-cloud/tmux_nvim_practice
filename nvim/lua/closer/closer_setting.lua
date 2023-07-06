-- closer
local closer = require('closer')

-- vim-closerの設定
vim.g.closer_enable_insert_mode = 1  -- インサートモードでも括弧の補完を有効にする

-- 括弧や引用符のマッピング
local cmp = require('cmp')

cmp.setup {
  mapping = {
    ['('] = cmp.mapping.closer('(', ')'),
    ['{'] = cmp.mapping.closer('{', '}'),
    ['['] = cmp.mapping.closer('[', ']'),
    ["'"] = cmp.mapping.quote("'"),
    ['"'] = cmp.mapping.quote('"')
  }
}

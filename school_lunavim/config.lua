-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

local lspconfig = require("lspconfig")

-- C言語用のLSPサーバーを設定
lvim.format_on_save.enabled = true

lspconfig.clangd.setup {
  cmd = { "clangd", "--background-index" },  -- clangdの実行コマンド
  filetypes = { "c", "cpp" },         -- サポートするファイルタイプ
  root_dir = lspconfig.util.root_pattern(".git", "compile_flags.txt"),
  on_attach = function(client, bufnr)
    -- オプション: LSPクライアントがアタッチされた際に行うカスタム設定
    -- 例えば、LSPクライアントにファイルタイプを指定するなど
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
    -- フォーマッタの設定
    require('lspconfig').util.completion_customize_lsp_complete(client, bufnr, {
      format_on_save = true,  -- 保存時にフォーマットを実行する
    })
  end,
}

-- pythonのLSPサーバを設定
-- lspconfig.pyright.setup {
--   cmd = { "pyright" }, 
--   filetypes = { "py" },
--   root_dir = lspconfig.util.root_pattern(".git", "compile_flags.txt"),
--   on_attach = function(client, bufnr)
--     vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
--     -- フォーマッタの設定
--     -- require('lspconfig').util.completion_customize_lsp_complete(client, bufnr, {
--     --   format_on_save = true,  -- 保存時にフォーマットを実行する
--     })
--   end,
-- }

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "black" },
  {
    name = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespace
    -- options such as `--line-width 80` become either `{"--line-width", "80"}` or `{"--line-width=80"}`
    args = { "--print-width", "100" },
    ---@usage only start in these filetypes, by default it will attach to all filetypes it supports
    filetypes = { "typescript", "typescriptreact" },
  },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { name = "flake8" },
  {
    name = "shellcheck",
    args = { "--severity", "warning" },
  },
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    name = "proselint",
  },
}

-- jsonのLSPサーバを設定
lspconfig.jsonls.setup{
    on_attach = function(client)
        print('Language server started!')
        -- 他の設定やカスタマイズを追加する場合はここに追加
    end,
}

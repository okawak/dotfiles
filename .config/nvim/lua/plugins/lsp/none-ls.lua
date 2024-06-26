return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    null_ls.setup({
      sources = {
        -- cpp
        null_ls.builtins.formatting.clang_format.with({
          extra_args = { "-style={ BasedOnStyle: LLVM, ColumnLimit: 0, IndentWidth: 4 }" },
        }),
        -- shellscript
        null_ls.builtins.formatting.shfmt,
        -- python
        null_ls.builtins.formatting.black,
        -- markdown
        null_ls.builtins.formatting.markdownlint,
        null_ls.builtins.formatting.cbfmt,
        -- lua
        null_ls.builtins.formatting.stylua,

        -- web (http, js, ts and so on...)
        null_ls.builtins.formatting.prettierd.with({
          condition = function(utils)
            return utils.has_file({ ".prettierrc", ".prettierrc.js" })
          end,
          prefer_local = "node_modules/.bin",
        }),
      },
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({
                async = false,
                filter = function(c)
                  return c.name == "null-ls"
                end,
              })
            end,
          })
        end
      end,
    })
  end,
}

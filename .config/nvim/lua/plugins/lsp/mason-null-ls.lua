return {
  "jay-babu/mason-null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "nvimtools/none-ls.nvim",
  },
  config = function()
    local mason_null_ls = require("mason-null-ls")
    mason_null_ls.setup({
      ensure_installed = {
        "black",
        "cbfmt",
        "clang-format",
        "markdownlint",
        "prettierd",
        "shfmt",
        "stylua",
      },
      automatic_installation = true,
    })
  end,
}

-- setting for lazy.nvim
-- see https://github.com/folke/lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  spec = {
    { import = "plugins" },
    { import = "plugins.ui" },
    { import = "plugins.lsp" },
    { import = "plugins.git" },
  },
}

require("lazy").setup(plugins, {
  defaults = {
    lazy = true,
  },

  checker = {
    enable = true,
  },

  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
        "man",
      },
    },
  },
})

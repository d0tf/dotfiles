local ok, ts_config = pcall(require, "nvim-treesitter.configs")
if not ok then
  print("treesitter not installed! https://github.com/nvim-treesitter/nvim-treesitter")
end

ts_config.setup({
  ensure_installed = {
    "vimdoc",
    "javascript",
    "typescript",
    "rust",
    "lua",
    "go",
    "python",
    "html",
    "css",
    "json",
    "markdown",
    "markdown_inline",
    "astro",
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  },
  autotag = {
    enable = true
  }
})

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
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
        enable = true,
        additional_vim_regex_highlighting = { "markdown" },
      },
      indent = {
        enable = true
      },
      autotag = {
        enable = true
      }
    })
  end
}

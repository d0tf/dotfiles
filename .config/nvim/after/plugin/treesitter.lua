local statusTS, treesitter_config = pcall(require, "nvim-treesitter.configs")
if not statusTS then
  return
end

local statusAT, autotag = pcall(require, "nvim-ts-autotag")
if not statusAT then
  return
end

treesitter_config.setup({
  ensure_installed = {
    "vimdoc",
    "javascript",
    "typescript",
    "rust",
    "lua",
    "go",
    "python",
    "tsx",
    "css",
    "json",
    "html",
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

autotag.setup({
  disable_filetypes = {
    "TelescopePrompt",
    "vim",
  }
})

local status, telescope = pcall(require, "telescope")
if not status then
  return print("telescope.nvim not installed")
end

telescope.setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      ".git",
      ".cargo"
    }
  }
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>pg", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})

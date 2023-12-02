local status, telescope = pcall(require, "telescope")
if not status then
  print("telescope not installed! https://github.com/nvim-telescope/telescope.nvim#Installation")
end

telescope.setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      ".git",
      ".cargo",
    }
  }
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>pg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
vim.keymap.set("n", "<leader>ph", builtin.help_tags, {})

local ok, _ = pcall(require, "moonfly")
if not ok then
  print("moonfly not installed! https://github.com/bluz71/vim-moonfly-colors#Installation")
end

vim.cmd.colorscheme("moonfly")

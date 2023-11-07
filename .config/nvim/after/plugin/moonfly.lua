local status, moonfly = pcall(require, "moonfly")
if not status then
   return print("colorscheme moonfly not installed")
end

vim.cmd.colorscheme("moonfly")


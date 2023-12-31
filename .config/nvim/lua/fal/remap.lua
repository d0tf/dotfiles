vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pe", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "v", "n" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set({ "v", "n" }, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- increment / decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "_", "<C-x>")

-- select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { silent = true })
vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { silent = true })

-- split
vim.keymap.set("n", "<leader>sv", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>sh", vim.cmd.split)
vim.keymap.set("n", "<leader>sc", vim.cmd.close)

-- resize
vim.keymap.set("n", "<leader>rh", "<C-w><")
vim.keymap.set("n", "<leader>rl", "<C-w>>")
vim.keymap.set("n", "<leader>rk", "<C-w>-")
vim.keymap.set("n", "<leader>rj", "<C-w>+")

-- undotree
vim.keymap.set('n', '<leader>u', "<cmd>UndotreeToggle<CR><cmd>UndotreeFocus<CR>")

-- trouble
vim.keymap.set('n', '<leader>qf', "<cmd>TroubleToggle quickfix<CR>")

-- hehe
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

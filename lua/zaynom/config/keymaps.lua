-- space as leader key
vim.g.mapleader = " "

-- C-c does a hard exit and does not update diagnoses
vim.keymap.set("i", "<C-c>", "<Esc>")

-- bufferline
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- desable space in N & V mode
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- move code up/down
vim.keymap.set("n", "<C-j>", ":m +1<CR>==")
vim.keymap.set("n", "<C-k>", ":m -2<CR>==")
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- quit
vim.keymap.set("n", "<leader>q", ":q <CR>")

-- save file
vim.keymap.set("n", "<leader>w", ":w <CR>")

-- I don't remamber what was this for
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

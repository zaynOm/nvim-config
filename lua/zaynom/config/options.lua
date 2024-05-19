-- for setting transparent background
vim.opt.termguicolors = true
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')

vim.g.background = "dark"
vim.opt.nu = true
vim.opt.rnu = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.textwidth = 80

vim.opt.swapfile = false
vim.opt.backup = false

-- save undo
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- vim.opt.clipboard = "unnamed"
vim.opt.mouse = "a"

vim.opt.updatetime = 50

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- highlight staf
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- nvim-tree netrw have no idea what this means, but i'm tring to desable the notify in NT
-- enable netrw for editing files on a remote server EDIT: does not work
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

vim.g.python_host_prog = "~/.nvim-venv/bin/python"
vim.g.python3_host_prog = "~/.nvim-venv/bin/python"

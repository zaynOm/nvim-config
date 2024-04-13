-- space as leader key
vim.g.mapleader = " "

-- bufferline
vim.keymap.set('n', '<leader>n', ':bn<cr>')
vim.keymap.set('n', '<leader>p', ':bp<cr>')
vim.keymap.set('n', '<leader>x', ':bd<cr>')

-- yank to clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]])

-- desable space in N & V mode
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', { silent = true })

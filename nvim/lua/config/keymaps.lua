local map = vim.keymap.set

map('n', ';', ':')

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', 'J', 'mzJ`z')
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'N', 'Nzzzv')
map('n', 'n', 'nzzzv')

map('v', 'J', ":m '>+1<cr>gv=gv")
map('v', 'K', ":m '<-2<cr>gv=gv")

map('n', '<leader>t', vim.cmd.TroubleToggle)
map('n', '<leader>T', vim.cmd.TroubleClose)

map('n', '<leader>z', vim.cmd.ZenMode)

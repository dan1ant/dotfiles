local map = vim.keymap.set

map('n', ';', ':', { desc = 'Command Mode' })

map('n', 'J', 'mzJ`z', { desc = 'Merge with line below' })
map('n', '<C-d>', '<C-d>zz', { desc = 'Scroll Down' })
map('n', '<C-u>', '<C-u>zz', { desc = 'Scroll Up' })
map('n', 'N', 'Nzzzv', { desc = 'Go To Prev Occurrence' })
map('n', 'n', 'nzzzv', { desc = 'Go To Next Occurrence' })

map('v', 'J', ":m '>+1<cr>gv=gv", { desc = 'Keep indentation while moving UP' })
map('v', 'K', ":m '<-2<cr>gv=gv", { desc = 'Keep indentation while moving DOWN' })

map('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit Terminal mode' })

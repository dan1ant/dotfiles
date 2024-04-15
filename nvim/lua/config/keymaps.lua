local map = vim.keymap.set

map('n', ';', ':', { desc = 'Command Mode' })

map('n', '<C-h>', '<C-w>h', { desc = 'Move Focus to Left Window' })
map('n', '<C-j>', '<C-w>j', { desc = 'Move Focus to Down Window' })
map('n', '<C-k>', '<C-w>k', { desc = 'Move Focus to Top Window' })
map('n', '<C-l>', '<C-w>l', { desc = 'Move Focus to Right Window' })

map('n', 'J', 'mzJ`z', { desc = 'Merge with line below' })
map('n', '<C-d>', '<C-d>zz', { desc = 'Scroll Down' })
map('n', '<C-u>', '<C-u>zz', { desc = 'Scroll Up' })
map('n', 'N', 'Nzzzv', { desc = 'Go To Prev Occurrence' })
map('n', 'n', 'nzzzv', { desc = 'Go To Next Occurrence' })

map('v', 'J', ":m '>+1<cr>gv=gv", { desc = 'Move 1 or more lines Down' })
map('v', 'K', ":m '<-2<cr>gv=gv", { desc = 'Move 1 or more lines Up' })

map('n', '<leader>e', function()
  vim.cmd([[TroubleToggle document_diagnostics]])
end, { desc = 'Open Diagnostics' })

map('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Telescope Find Files' })
map('n', '<leader>fs', require('telescope.builtin').live_grep, { desc = 'Telescope Search' })
map('n', '<leader>fS', require('telescope.builtin').grep_string, { desc = 'Telescope Search current Word' })
map('n', '<leader>fb', require('telescope.builtin').buffers, { desc = 'Telescope Search Buffers' })
map('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Telescope Help Tags' })

map('n', '<leader>t', vim.cmd.TodoTrouble, { desc = 'Open Todos in Trouble' })

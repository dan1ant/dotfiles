local map = vim.keymap.set

map('n', ';', ':', { desc = 'Command Mode' })

map('n', 'J', 'mzJ`z', { desc = 'Merge with line below' })
map('n', '<C-d>', '<C-d>zz', { desc = 'Scroll Down' })
map('n', '<C-u>', '<C-u>zz', { desc = 'Scroll Up' })
map('n', 'N', 'Nzzzv', { desc = 'Go To Prev Occurrence' })
map('n', 'n', 'nzzzv', { desc = 'Go To Next Occurrence' })

map('v', 'J', ":m '>+1<cr>gv=gv", { desc = 'Move 1 or more lines Down' })
map('v', 'K', ":m '<-2<cr>gv=gv", { desc = 'Move 1 or more lines Up' })

map('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Telescope Find Files' })
map('n', '<leader>fs', require('telescope.builtin').live_grep, { desc = 'Telescope Fuzzy Find' })
map('n', '<leader>fS', require('telescope.builtin').grep_string, { desc = 'Telescope Fuzzy Find current Word' })
map('n', '<leader>fb', require('telescope.builtin').buffers, { desc = 'Telescope List Open Buffers' })
map(
  'n',
  '<leader>fB',
  require('telescope.builtin').current_buffer_fuzzy_find,
  { desc = 'Telescope Fuzzy Find in Buffer' }
)
map('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Telescope List Help Tags' })
map('n', '<leader>ft', vim.cmd.TodoTelescope, { desc = 'Telescope ToDo Comments' })

map('n', '<leader>xd', function()
  require('trouble').toggle('diagnostics')
end, { desc = 'Trouble Diagnostics' })
map('n', '<leader>xt', function()
  require('trouble').toggle('todo')
end, { desc = 'Trouble ToDo Comments' })
map('n', '<leader>xx', function()
  require('trouble').close()
end, { desc = 'Trouble Close Window' })

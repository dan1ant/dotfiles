return {
  'folke/trouble.nvim',
  opts = {
    focus = true,
  },
  cmd = 'Trouble',
  keys = {
    { '<leader>td', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', desc = 'Diagnostics (Buffer)' },
    { '<leader>tD', '<cmd>Trouble diagnostics toggle<cr>', desc = 'Diagnostics' },
    { '<leader>tt', '<cmd>Trouble todo toggle<cr>', desc = 'ToDo Comments' },
  },
}

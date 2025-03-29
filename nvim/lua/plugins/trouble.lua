return {
  'folke/trouble.nvim',
  opts = {
    focus = true,
  },
  cmd = 'Trouble',
  keys = {
    { '<leader>td', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', desc = '(Trouble) Diagnostics (Buffer)' },
    { '<leader>tD', '<cmd>Trouble diagnostics toggle<cr>', desc = '(Trouble) Diagnostics' },
    {
      '<leader>tl',
      '<cmd>Trouble lsp toggle<cr>',
      desc = '(Trouble) LSP',
    },
    { '<leader>tt', '<cmd>Trouble todo toggle<cr>', desc = '(Trouble) TODO Comments' },
  },
}

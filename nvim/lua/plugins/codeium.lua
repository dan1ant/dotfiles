return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  init = function()
    vim.keymap.set('i', '<C-a>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true })
  end,
}

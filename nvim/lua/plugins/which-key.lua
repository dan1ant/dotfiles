return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    spec = {
      { '<leader>f', group = '+fzf-Lua' },
      { '<leader>p', group = '+nvim-tree' },
      { '<leader>t', group = '+trouble' },
    },
  },
}

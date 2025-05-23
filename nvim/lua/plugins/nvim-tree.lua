return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    view = {
      width = 40,
    },
    git = {
      ignore = false,
    },
  },
  keys = {
    { '<leader>po', '<cmd>NvimTreeOpen<cr>', desc = 'Open NvimTree' },
    { '<leader>pc', '<cmd>NvimTreeClose<cr>', desc = 'Close NvimTree' },
  },
}

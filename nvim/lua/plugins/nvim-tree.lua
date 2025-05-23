return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup({
      view = {
        side = 'right',
        width = 60,
      },
      git = {
        ignore = false,
      },
    })
  end,
  keys = {
    { '<leader>pf', '<cmd>NvimTreeOpen<cr>', desc = 'Open NvimTree' },
  },
}

return {
  'nvim-lualine/lualine.nvim',
  opts = {
    sections = {
      lualine_x = { 'filetype' },
    },
    extensions = {
      'trouble',
    },
  },
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
}

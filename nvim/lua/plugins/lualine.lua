return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      theme = 'tokyonight',
    },
    tabline = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    sections = {
      lualine_c = { 'lsp_progress' },
      lualine_x = { 'filetype' },
    },
  },
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
}

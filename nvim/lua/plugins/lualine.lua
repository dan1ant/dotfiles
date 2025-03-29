return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    options = {
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_a = {
        {
          'mode',
          icon = '',
        },
      },
      lualine_x = {
        'lsp_status',
      },
      lualine_y = {
        'encoding',
        'fileformat',
      },
      lualine_z = {
        'progress',
        'location',
      },
    },
    extensions = {
      'fzf',
      'lazy',
      'nvim-dap-ui',
      'trouble',
    },
  },
}

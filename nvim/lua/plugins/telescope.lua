return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
    },
    'nvim-telescope/telescope-dap.nvim',
  },
  opts = function()
    local actions = require('telescope.actions')
    local trouble_actions = require('trouble.sources.telescope')

    return {
      defaults = {
        prompt_prefix = '🔍 ',
        selection_caret = ' ',
        mappings = {
          i = {
            ['<C-q>'] = trouble_actions.open,
            ['<M-q>'] = actions.nop,
          },
        },
      },
    }
  end,
  config = function(_, opts)
    require('telescope').setup(opts)
    require('telescope').load_extension('fzf')
    require('telescope').load_extension('dap')
  end,
}

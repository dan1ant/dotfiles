return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
    },
  },
  config = function()
    local actions = require('telescope.actions')
    local trouble_actions = require('trouble.providers.telescope')

    local opts = {
      defaults = {
        prompt_prefix = '🔍 ',
        selection_caret = ' ',
        mappings = {
          i = {
            ['<C-q>'] = trouble_actions.smart_open_with_trouble,
            ['<M-q>'] = actions.nop,
          },
        },
      },
    }

    require('telescope').setup(opts)
    require('telescope').load_extension('fzf')
  end,
}

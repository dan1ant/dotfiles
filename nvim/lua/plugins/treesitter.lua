return {
  'nvim-treesitter/nvim-treesitter',
  config = function()
    local configs = require('nvim-treesitter.configs')

    --- @diagnostic disable: missing-fields
    configs.setup({
      ensure_installed = {
        'c',
        'cpp',
        'go',
        'gomod',
        'gowork',
        'gosum',
        'lua',
        'odin',
        'toml',
        'json',
        'vim',
        'vimdoc',
      },
      sync_install = true,
      auto_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local configs = require('nvim-treesitter.configs')

    --- @diagnostic disable: missing-fields
    configs.setup({
      ensure_installed = { 'c', 'lua', 'odin', 'toml', 'vim', 'vimdoc' },
      sync_install = true,
      auto_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

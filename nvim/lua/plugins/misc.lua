return {
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    'folke/zen-mode.nvim',
    opts = {
      plugins = {
        diagnostics = {
          enabled = true,
        },
      },
    },
  },
  {
    'j-hui/fidget.nvim',
    opts = {
      notification = {
        override_vim_notify = true,
      },
    },
  },
  { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
}

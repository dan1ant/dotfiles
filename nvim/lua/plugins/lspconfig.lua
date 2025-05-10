return {
  {
    'mason-org/mason.nvim',
    opts = {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    },
  },
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {
      ensure_installed = {
        'lua_ls',
        'gopls',
      },
    },
  },
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = {
      ensure_installed = {
        --formatters
        'stylua',
        'gofumpt',
        'goimports',
        --debuggers
        'codelldb',
        'delve',
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
  },
}

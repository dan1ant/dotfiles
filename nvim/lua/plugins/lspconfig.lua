return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'folke/neodev.nvim',
    'hrsh7th/cmp-nvim-lsp',
  },
  config = function(_, _)
    require('neodev').setup()

    local lspconfig = require('lspconfig')
    local servers = { 'gopls', 'lua_ls', 'ols' }

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

    for _, server in pairs(servers) do
      local opts = {}
      opts.capabilities = cmp_capabilities

      local ok_ext_opts, ext_opts = pcall(require, 'plugins.lsp.' .. server)
      if ok_ext_opts then
        opts = vim.tbl_deep_extend('force', opts, ext_opts)
      end

      lspconfig[server].setup(opts)
    end
  end,
}

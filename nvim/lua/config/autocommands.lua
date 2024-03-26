-- Highlight on Yank
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('YankHighlight', { clear = true }),
  pattern = '*',
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(event)
    local bufnr = event.buf
    local client = vim.lsp.get_client_by_id(event.data.client_id)

    vim.keymap.set(
      'n',
      'gd',
      require('telescope.builtin').lsp_definitions,
      { desc = '(LSP) Definitions', buffer = event.buf }
    )
    vim.keymap.set(
      'n',
      'gr',
      require('telescope.builtin').lsp_references,
      { desc = '(LSP) References', buffer = event.buf }
    )
    vim.keymap.set(
      'n',
      'gI',
      require('telescope.builtin').lsp_implementations,
      { desc = '(LSP) Implementations', buffer = event.buf }
    )
    vim.keymap.set(
      'n',
      '<leader>D',
      require('telescope.builtin').lsp_type_definitions,
      { desc = '(LSP) Type Definitions', buffer = event.buf }
    )
    vim.keymap.set(
      'n',
      '<leader>ds',
      require('telescope.builtin').lsp_document_symbols,
      { desc = '(LSP) Document Symbols', buffer = event.buf }
    )
    vim.keymap.set(
      'n',
      '<leader>ws',
      require('telescope.builtin').lsp_dynamic_workspace_symbols,
      { desc = '(LSP) Workspace Symbols', buffer = event.buf }
    )

    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = '(LSP) Declaration', buffer = event.buf })
    vim.keymap.set('n', '<A-k>', vim.lsp.buf.signature_help, { desc = '(LSP) Signature Help', buffer = event.buf })
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = '(LSP) Hover', buffer = event.buf })
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = '(LSP) Rename', buffer = event.buf })
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '(LSP) Code Actions', buffer = event.buf })

    if client ~= nil and client.server_capabilities.inlayHintProvider then
      vim.keymap.set('n', '<leader>ih', function()
        vim.lsp.inlay_hint.enable(bufnr, not vim.lsp.inlay_hint.is_enabled(bufnr))
      end, { desc = '(LSP) Activate/Deactivate Inlay Hints' })
    end
  end,
})

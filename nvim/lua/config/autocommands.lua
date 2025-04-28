-- Highlight on Yank
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('YankHighlight', { clear = true }),
  pattern = '*',
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- LSP
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(event)
    local client = vim.lsp.get_client_by_id(event.data.client_id)
    local bufnr = event.buf
    local fzf = require('fzf-lua')

    if client:supports_method(vim.lsp.protocol.Methods.textDocument_definition) then
      vim.keymap.set('n', 'grd', fzf.lsp_definitions, { desc = '[LSP] Definitions', buffer = bufnr })
    end

    if client:supports_method(vim.lsp.protocol.Methods.textDocument_declaration) then
      vim.keymap.set('n', 'grD', fzf.lsp_declarations, { desc = '[LSP] Declarations', buffer = bufnr })
    end

    if client:supports_method(vim.lsp.protocol.Methods.textDocument_references) then
      vim.keymap.set('n', 'grr', fzf.lsp_references, { desc = '[LSP] References', buffer = bufnr })
    end

    if client:supports_method(vim.lsp.protocol.Methods.textDocument_implementation) then
      vim.keymap.set('n', 'gri', fzf.lsp_implementations, { desc = '[LSP] Implementations', buffer = bufnr })
    end

    if client:supports_method(vim.lsp.protocol.Methods.textDocument_documentSymbol) then
      vim.keymap.set('n', 'gO', fzf.lsp_document_symbols, { desc = '[LSP] Document Symbols', buffer = bufnr })
    end

    if client:supports_method(vim.lsp.protocol.Methods.textDocument_codeAction) then
      vim.keymap.set({ 'n', 'x' }, 'gra', fzf.lsp_code_actions, { desc = '[LSP] Code Actions', buffer = bufnr })
    end

    if client:supports_method(vim.lsp.protocol.Methods.textDocument_signatureHelp) then
      vim.keymap.set(
        { 'i', 's' },
        '<C-S>',
        vim.lsp.buf.signature_help,
        { desc = '[LSP] Signature Help', buffer = bufnr }
      )
    end

    if client:supports_method(vim.lsp.protocol.Methods.textDocument_hover) then
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = '[LSP] Hover', buffer = bufnr })
    end

    if client:supports_method(vim.lsp.protocol.Methods.textDocument_rename) then
      vim.keymap.set('n', 'grn', vim.lsp.buf.rename, { desc = '[LSP] Rename', buffer = bufnr })
    end

    if client and client.name == 'gopls' then
      if not client.server_capabilities.semanticTokensProvider then
        local semantic = client.config.capabilities.textDocument.semanticTokens
        if semantic ~= nil then
          client.server_capabilities.semanticTokensProvider = {
            full = true,
            legend = {
              tokenTypes = semantic.tokenTypes,
              tokenModifiers = semantic.tokenModifiers,
            },
            range = true,
          }
        end
      end
    end

    --Document Highlight
    if client:supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
      local docHighlightGroup = vim.api.nvim_create_augroup('UserLspDocumentHighlight', { clear = false })

      vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
        group = docHighlightGroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.document_highlight()
        end,
      })

      vim.api.nvim_create_autocmd('CursorMoved', {
        group = docHighlightGroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.clear_references()
        end,
      })
    end
  end,
})

return {
  settings = {
    Lua = {
      format = {
        enable = false,
      },
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        checkThirdParty = false,
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
          [vim.fn.stdpath('config') .. '/lua'] = true,
        },
      },
      hint = {
        enable = true,
        arrayIndex = 'Disable',
        await = true,
        paramName = 'Disable',
        paramType = true,
        semicolon = 'All',
        setType = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

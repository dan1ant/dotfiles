return {
  settings = {
    Lua = {
      completion = {
        callSnippet = 'Replace',
      },
      diagnostics = {
        disable = {
          'need-check-nil',
        },
      },
      format = {
        enable = false,
      },
      telemetry = {
        enable = false,
      },
      workspace = {
        checkThirdParty = false,
      },
    },
  },
}

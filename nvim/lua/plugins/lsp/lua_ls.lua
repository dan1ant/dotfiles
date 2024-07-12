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
      hint = {
        enable = true,
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

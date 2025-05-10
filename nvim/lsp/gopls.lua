return {
  settings = {
    gopls = {
      analyses = {
        nilness = true,
        unusedparams = true,
        unusedwrite = true,
        useany = true,
        unusedvariable = true,
      },
      directoryFilters = {
        '-.git',
        '-.vscode',
        '-.idea',
        '-.vscode-test',
        '-node_modules',
      },
      usePlaceholders = true,
      completeUnimported = true,
      staticcheck = true,
      semanticTokens = true,
    },
  },
}

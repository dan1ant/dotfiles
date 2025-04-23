return {
  {
    'williamboman/mason.nvim',
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
    'williamboman/mason-lspconfig.nvim',
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
    dependencies = {
      'saghen/blink.cmp',
    },
    opts = {
      diagnostic = {
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = '󰅚 ',
            [vim.diagnostic.severity.WARN] = '󰀪 ',
            [vim.diagnostic.severity.INFO] = ' ',
            [vim.diagnostic.severity.HINT] = '󰌶 ',
          },
          texthl = {
            [vim.diagnostic.severity.ERROR] = 'DiagnosticSignError',
            [vim.diagnostic.severity.WARN] = 'DiagnosticSignWarn',
            [vim.diagnostic.severity.INFO] = 'DiagnosticSignInfo',
            [vim.diagnostic.severity.HINT] = 'DiagnosticSignHint',
          },
          numhl = {
            [vim.diagnostic.severity.ERROR] = 'DiagnosticSignError',
            [vim.diagnostic.severity.WARN] = 'DiagnosticSignWarn',
            [vim.diagnostic.severity.INFO] = 'DiagnosticSignInfo',
            [vim.diagnostic.severity.HINT] = 'DiagnosticSignHint',
          },
        },
        virtual_text = true,
        severity_sort = true,
      },
      servers = {
        lua_ls = {
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
        },
        gopls = {
          settings = {
            gopls = {
              gofumpt = true,
              codelenses = {
                gc_details = false,
                generate = true,
                regenerate_cgo = true,
                run_govulncheck = true,
                test = true,
                tidy = true,
                upgrade_dependency = true,
                vendor = true,
              },
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
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
        },
        ols = {},
      },
    },
    config = function(_, opts)
      vim.diagnostic.config(opts.diagnostic)

      local servers = opts.servers
      for server_name, server_opts in pairs(servers) do
        vim.lsp.config(server_name, server_opts)
        vim.lsp.enable(server_name)
      end
    end,
  },
}

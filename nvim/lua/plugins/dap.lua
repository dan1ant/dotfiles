return {
  'mfussenegger/nvim-dap',
  dependencies = {
    {
      'leoluz/nvim-dap-go',
      opts = {
        delve = {
          detached = vim.fn.has('win32') ~= 1,
        },
      },
    },
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
  },
  config = function()
    local dap = require('dap')
    local dapui = require('dapui')

    dap.adapters.codelldb = {
      type = 'server',
      port = '${port}',
      executable = {
        command = 'codelldb',
        args = { '--port', '${port}' },
        detached = vim.fn.has('win32') ~= 1,
      },
    }

    dap.configurations.odin = {
      {
        name = 'Launch & Debug',
        type = 'codelldb',
        request = 'launch',
        program = '${workspaceFolder}' .. '/' .. '${workspaceFolderBasename}' .. '.exe',
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
      },
      {
        name = 'Launch & Debug (Select Executable)',
        type = 'codelldb',
        request = 'launch',
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
      },
    }

    dapui.setup()
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
  end,
}

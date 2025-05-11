local is_unix = function()
  return vim.fn.has('win32') ~= 1
end

return {
  'mfussenegger/nvim-dap',
  dependencies = {
    {
      'leoluz/nvim-dap-go',
      opts = {
        delve = {
          path = (is_unix() and 'dlv' or 'dlv.cmd'),
          detached = is_unix(),
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
        command = (is_unix() and 'codelldb' or 'codelldb.cmd'),
        args = { '--port', '${port}' },
        detached = is_unix(),
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

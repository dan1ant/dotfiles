require('config.options')
require('config.lazy')
require('config.keymaps')
require('config.autocommands')
require('config.diagnostics')

-- manual enabled: not using the one from Mason
vim.lsp.enable('ols')

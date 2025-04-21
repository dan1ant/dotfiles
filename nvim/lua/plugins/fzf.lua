return {
  'ibhagwan/fzf-lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {},
  keys = {
    { '<leader>ff', '<cmd>FzfLua files<cr>', desc = 'Find Files' },
    { '<leader>fw', '<cmd>FzfLua grep_cword<cr>', desc = 'Grep cword' },
    { '<leader>fW', '<cmd>FzfLua grep_cWORD<cr>', desc = 'Grep cWORD' },
    { '<leader>fs', '<cmd>FzfLua grep<cr>', desc = 'Grep' },
    { '<leader>fS', '<cmd>FzfLua live_grep<cr>', desc = 'Live Grep' },
    { '<leader>fb', '<cmd>FzfLua buffers<cr>', desc = 'Find Open Buffers' },
    { '<leader>fg', '<cmd>FzfLua <cr> ^git_', desc = 'Git' },
  },
}

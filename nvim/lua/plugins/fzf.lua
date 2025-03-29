return {
  'ibhagwan/fzf-lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {},
  keys = {
    { '<leader>ff', '<cmd>FzfLua files<cr>', desc = '(Fzf) Find Files' },
    { '<leader>fw', '<cmd>FzfLua grep_cword<cr>', desc = '(Fzf) Grep cword' },
    { '<leader>fW', '<cmd>FzfLua grep_cWORD<cr>', desc = '(Fzf) Grep cWORD' },
    { '<leader>fs', '<cmd>FzfLua grep<cr>', desc = '(Fzf) Grep' },
    { '<leader>fS', '<cmd>FzfLua live_grep<cr>', desc = '(Fzf) Live Grep' },
    { '<leader>fB', '<cmd>FzfLua buffers<cr>', desc = '(Fzf) Find Open Buffers' },
    { '<leader>fg', '<cmd>FzfLua <cr> ^git_', desc = '(Fzf) Git' },
  },
}

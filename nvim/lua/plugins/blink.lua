return {
  'saghen/blink.cmp',
  version = '1.*',
  dependencies = { 'rafamadriz/friendly-snippets' },
  opts = {
    keymap = { preset = 'enter' },
    completion = {
      menu = {
        draw = {
          columns = {
            { 'kind_icon' },
            { 'label', 'label_description' },
            { 'source_name' },
          },
        },
      },
      documentation = {
        auto_show = true,
      },
      ghost_text = {
        enabled = true,
      },
    },
    sources = {
      default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        lazydev = {
          name = 'LazyDev',
          module = 'lazydev.integrations.blink',
          score_offset = 100,
        },
      },
    },
  },
}

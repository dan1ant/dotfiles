return {
  'saghen/blink.cmp',
  version = '1.*',
  dependencies = { 'rafamadriz/friendly-snippets' },
  opts = {
    keymap = { preset = 'enter' },
    completion = {
      list = {
        selecton = {
          preselect = false,
        },
      },
      menu = {
        draw = {
          columns = {
            { 'label', 'label_description' },
            { 'kind_icon', 'source_name', gap = 1 },
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
      default = { 'lazydev', 'lsp', 'snippets', 'buffer', 'path' },
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

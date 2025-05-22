return {
  'saghen/blink.cmp',
  version = '1.*',
  dependencies = { 'rafamadriz/friendly-snippets' },
  opts = {
    keymap = { preset = 'enter' },
    completion = {
      list = {
        selection = {
          preselect = false,
        },
      },
      menu = {
        draw = {
          columns = {
            { 'label', 'label_description', gap = 1 },
            { 'kind_icon', 'source_name', gap = 1 },
          },
          components = {
            -- temp fix: https://github.com/Saghen/blink.cmp/issues/1317#issuecomment-2762258454
            label_description = {
              text = function(ctx)
                return ctx.label_description ~= '' and ctx.label_description or ctx.item.detail
              end,
            },
          },
        },
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

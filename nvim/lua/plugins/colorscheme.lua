return {
  'rebelot/kanagawa.nvim',
  init = function()
    vim.cmd.colorscheme('kanagawa')
  end,
  priority = 1000,
  opts = {
    background = {
      dark = 'dragon',
    },
    overrides = function(colors)
      local theme = colors.theme
      local makeDiagnosticColor = function(color)
        local c = require('kanagawa.lib.color')
        return { fg = color, bg = c(color):blend(theme.ui.bg, 0.95):to_hex() }
      end

      return {
        Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
        PmenuSel = { fg = 'NONE', bg = theme.ui.bg_p2 },
        PmenuSbar = { bg = theme.ui.bg_m1 },
        PmenuThumb = { bg = theme.ui.bg_p2 },

        BlinkCmpLabelDescription = { link = 'BlinkCmpLabelDetails' },
        BlinkCmpSource = { link = 'BlinkCmpLabel' },

        DiagnosticVirtualTextHint = makeDiagnosticColor(theme.diag.hint),
        DiagnosticVirtualTextInfo = makeDiagnosticColor(theme.diag.info),
        DiagnosticVirtualTextWarn = makeDiagnosticColor(theme.diag.warning),
        DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),
      }
    end,
  },
}

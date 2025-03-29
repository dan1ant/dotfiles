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

        NoiceCmdlineIcon = { fg = theme.diag.info, bg = theme.ui.bg },
        NoiceCmdlineIconSearch = { fg = theme.diag.warning, bg = theme.ui.bg },
        NoiceCmdlinePopupBorder = { fg = theme.diag.info, bg = theme.ui.bg },
        NoiceCmdlinePopupBorderSearch = { fg = theme.diag.warning, bg = theme.ui.bg },
        NoiceCmdlinePopupTitle = { fg = theme.diag.info, bg = theme.ui.bg },
        NoiceCmdlinePopupTitleSearch = { fg = theme.diag.warning, bg = theme.ui.bg },

        DiagnosticVirtualTextHint = makeDiagnosticColor(theme.diag.hint),
        DiagnosticVirtualTextInfo = makeDiagnosticColor(theme.diag.info),
        DiagnosticVirtualTextWarn = makeDiagnosticColor(theme.diag.warning),
        DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),
      }
    end,
  },
}

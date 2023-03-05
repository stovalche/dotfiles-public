local status, n = pcall(require, "neosolarized")
if (not status) then return end

n.setup({
  comment_italics = true,
})

local cb = require('colorbuddy.init')
local Color = cb.Color
local colors = cb.colors
local Group = cb.Group
local groups = cb.groups
local styles = cb.styles

Color.new('darkgreen', '#20391e')
Color.new('darkred', '#51202a')
Color.new('darkcyan', '#1e505d')
Color.new('darkblue', '#1e205d')
Color.new('darkyellow', '#3e3e00')
Color.new('darkorange', '#602800')
Color.new('darkviolet', '#322747')
Color.new('darkmagenta', '#321232')
Color.new('black', '#000000')

Group.new('CursorLine', colors.NONE, colors.base03, styles.NONE, colors.base1)
Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)
Group.new('Visual', colors.NONE, colors.base03, styles.reverse)

local cError = groups.Error.fg
local cInfo = groups.Information.fg
local cWarn = groups.Warning.fg
local cHint = groups.Hint.fg

Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticUnderlineError", colors.NONE, colors.NONE, styles.undercurl, cError)
Group.new("DiagnosticUnderlineWarn", colors.NONE, colors.NONE, styles.undercurl, cWarn)
Group.new("DiagnosticUnderlineInfo", colors.NONE, colors.NONE, styles.undercurl, cInfo)
Group.new("DiagnosticUnderlineHint", colors.NONE, colors.NONE, styles.undercurl, cHint)

-- popup/float menu/window
Group.new('Pmenu', colors.base01, colors.NONE, styles.NONE) -- pumblend=0 (for transparency)
Group.new('FloatBorder', colors.base01)
Group.new('LspInfoBorder', colors.cyan)
Group.new('LspSagaHoverBorder', colors.base01)

-- lspsaga
Group.new('SagaShadow', colors.NONE, colors.base02)

-- cmp
Group.new('CmpItemMenu', colors.base01, colors.NONE, styles.italic )
Group.new('CmpItemAbbr', colors.base01, colors.NONE, styles.NONE)
Group.new('CmpItemAbbrMatch', colors.base0, colors.NONE, styles.NONE)
Group.new('CmpItemAbbrMatchFuzzy', colors.red, colors.NONE, styles.NONE)
Group.new('CmpItemAbbrDeprecated', colors.base00, colors.NONE, styles.strikethrough)
Group.new('CmpItemKindField', colors.yellow, colors.darkyellow )
Group.new('CmpItemKindProperty', colors.green, colors.darkgreen )
Group.new('CmpItemKindEvent', colors.orange, colors.darkorange )
Group.new('CmpItemKindText', colors.base1, colors.darkblue )
Group.new('CmpItemKindEnum', colors.yellow, colors.darkyellow )
Group.new('CmpItemKindKeyword', colors.green, colors.darkgreen )
Group.new('CmpItemKindConstant', colors.cyan, colors.darkcyan )
Group.new('CmpItemKindConstructor', colors.orange, colors.darkorange )
Group.new('CmpItemKindReference', colors.violet, colors.darkviolet )
Group.new('CmpItemKindFunction', colors.blue, colors.darkblue )
Group.new('CmpItemKindStruct', colors.yellow, colors.darkyellow )
Group.new('CmpItemKindClass', colors.yellow, colors.darkyellow )
Group.new('CmpItemKindModule', colors.green, colors.darkgreen )
Group.new('CmpItemKindVariable', colors.orange, colors.darkorange )
Group.new('CmpItemKindFile', colors.violet, colors.darkviolet )
Group.new('CmpItemKindUnit', colors.orange, colors.darkorange )
Group.new('CmpItemKindSnippet', colors.magenta, colors.darkmagenta )
Group.new('CmpItemKindFolder', colors.violet, colors.darkviolet )
Group.new('CmpItemKindMethod', colors.green, colors.darkgreen )
Group.new('CmpItemKindValue', colors.cyan, colors.darkcyan )
Group.new('CmpItemKindEnumMember', colors.cyan, colors.darkcyan )
Group.new('CmpItemKindInterface', colors.yellow, colors.darkyellow )
Group.new('CmpItemKindColor', colors.magenta, colors.darkmagenta )
Group.new('CmpItemKindTypeParameter', colors.orange, colors.darkorange )
Group.new('CmpItemKindOperator', colors.cyan, colors.darkcyan )

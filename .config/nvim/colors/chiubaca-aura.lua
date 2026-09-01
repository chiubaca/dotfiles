local colors = {
  midnight = "#0d1117",
  panel = "#161b22",
  selection = "#1a2332",
  guide = "#21262d",
  border = "#30363d",
  muted = "#484f58",
  subtle = "#8b949e",
  white = "#c9d1d9",
  amber = "#f0a500",
  blue = "#79c0ff",
  coral = "#ff7b72",
  green = "#7ee787",
  lavender = "#d2a8ff",
  orange = "#ffa657",
  error_bg = "#3d1c20",
  success_bg = "#17351f",
}

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "chiubaca-aura"
vim.o.background = "dark"

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

hi("Normal", { fg = colors.white, bg = colors.midnight })
hi("NormalNC", { fg = colors.white, bg = colors.midnight })
hi("NormalFloat", { fg = colors.white, bg = colors.panel })
hi("FloatBorder", { fg = colors.border, bg = colors.panel })
hi("Cursor", { fg = colors.midnight, bg = colors.amber })
hi("CursorLine", { bg = colors.selection })
hi("CursorColumn", { bg = colors.selection })
hi("ColorColumn", { bg = colors.selection })
hi("LineNr", { fg = colors.muted, bg = colors.midnight })
hi("CursorLineNr", { fg = colors.amber, bg = colors.selection, bold = true })
hi("SignColumn", { bg = colors.midnight })
hi("FoldColumn", { fg = colors.muted, bg = colors.midnight })
hi("WinSeparator", { fg = colors.border, bg = colors.midnight })
hi("VertSplit", { fg = colors.border, bg = colors.midnight })
hi("EndOfBuffer", { fg = colors.midnight, bg = colors.midnight })
hi("NonText", { fg = colors.guide })
hi("Whitespace", { fg = colors.guide })
hi("SpecialKey", { fg = colors.guide })
hi("Directory", { fg = colors.blue })
hi("Title", { fg = colors.amber, bold = true })

hi("Visual", { bg = colors.selection })
hi("Search", { fg = colors.midnight, bg = colors.amber })
hi("IncSearch", { fg = colors.midnight, bg = colors.amber, bold = true })
hi("CurSearch", { fg = colors.midnight, bg = colors.amber, bold = true })
hi("MatchParen", { fg = colors.midnight, bg = colors.amber, bold = true })
hi("Substitute", { fg = colors.midnight, bg = colors.amber })

hi("Pmenu", { fg = colors.white, bg = colors.panel })
hi("PmenuSel", { fg = colors.amber, bg = colors.selection, bold = true })
hi("PmenuSbar", { bg = colors.border })
hi("PmenuThumb", { bg = colors.amber })
hi("WildMenu", { fg = colors.midnight, bg = colors.amber })
hi("StatusLine", { fg = colors.subtle, bg = colors.panel })
hi("StatusLineNC", { fg = colors.muted, bg = colors.panel })
hi("TabLine", { fg = colors.subtle, bg = colors.panel })
hi("TabLineFill", { bg = colors.midnight })
hi("TabLineSel", { fg = colors.amber, bg = colors.midnight, bold = true })

hi("ErrorMsg", { fg = colors.coral })
hi("WarningMsg", { fg = colors.amber })
hi("ModeMsg", { fg = colors.blue, bold = true })
hi("MoreMsg", { fg = colors.blue })
hi("Question", { fg = colors.amber })
hi("Todo", { fg = colors.midnight, bg = colors.amber, bold = true })
hi("Error", { fg = colors.coral })

hi("Comment", { fg = colors.muted, italic = true })
hi("Constant", { fg = colors.blue })
hi("String", { fg = colors.green })
hi("Character", { fg = colors.green })
hi("Number", { fg = colors.blue })
hi("Boolean", { fg = colors.blue })
hi("Float", { fg = colors.blue })
hi("Identifier", { fg = colors.white })
hi("Function", { fg = colors.amber })
hi("Statement", { fg = colors.coral })
hi("Conditional", { fg = colors.coral })
hi("Repeat", { fg = colors.coral })
hi("Label", { fg = colors.coral })
hi("Operator", { fg = colors.coral })
hi("Keyword", { fg = colors.coral })
hi("Exception", { fg = colors.coral })
hi("PreProc", { fg = colors.lavender })
hi("Include", { fg = colors.lavender })
hi("Define", { fg = colors.lavender })
hi("Macro", { fg = colors.lavender })
hi("Type", { fg = colors.amber })
hi("StorageClass", { fg = colors.coral })
hi("Structure", { fg = colors.amber })
hi("Typedef", { fg = colors.amber })
hi("Special", { fg = colors.lavender })
hi("Delimiter", { fg = colors.coral })
hi("Debug", { fg = colors.coral })

hi("DiagnosticError", { fg = colors.coral })
hi("DiagnosticWarn", { fg = colors.amber })
hi("DiagnosticInfo", { fg = colors.blue })
hi("DiagnosticHint", { fg = colors.lavender })
hi("DiagnosticUnderlineError", { undercurl = true, sp = colors.coral })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.amber })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.blue })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = colors.lavender })
hi("DiffAdd", { fg = colors.green, bg = colors.success_bg })
hi("DiffChange", { fg = colors.blue, bg = colors.selection })
hi("DiffDelete", { fg = colors.coral, bg = colors.error_bg })
hi("DiffText", { fg = colors.amber, bg = colors.selection, bold = true })

hi("@comment", { fg = colors.muted, italic = true })
hi("@constant", { fg = colors.blue })
hi("@constant.builtin", { fg = colors.blue })
hi("@string", { fg = colors.green })
hi("@string.escape", { fg = colors.lavender })
hi("@character", { fg = colors.green })
hi("@number", { fg = colors.blue })
hi("@boolean", { fg = colors.blue })
hi("@function", { fg = colors.amber })
hi("@function.call", { fg = colors.amber })
hi("@method", { fg = colors.lavender })
hi("@method.call", { fg = colors.lavender })
hi("@keyword", { fg = colors.coral })
hi("@keyword.function", { fg = colors.coral })
hi("@keyword.return", { fg = colors.coral })
hi("@operator", { fg = colors.coral })
hi("@type", { fg = colors.amber })
hi("@type.builtin", { fg = colors.amber })
hi("@attribute", { fg = colors.lavender })
hi("@variable", { fg = colors.white })
hi("@variable.parameter", { fg = colors.orange })
hi("@property", { fg = colors.white })
hi("@parameter", { fg = colors.orange })
hi("@tag", { fg = colors.amber })
hi("@tag.attribute", { fg = colors.blue })
hi("@tag.delimiter", { fg = colors.coral })
hi("@punctuation.bracket", { fg = colors.white })
hi("@punctuation.delimiter", { fg = colors.coral })

hi("NeoTreeNormal", { fg = colors.white, bg = colors.midnight })
hi("NeoTreeNormalNC", { fg = colors.white, bg = colors.midnight })
hi("NeoTreeEndOfBuffer", { fg = colors.midnight, bg = colors.midnight })
hi("NeoTreeWinSeparator", { fg = colors.border, bg = colors.midnight })
hi("NeoTreeRootName", { fg = colors.amber, bold = true })
hi("NeoTreeDirectoryIcon", { fg = colors.blue })
hi("NeoTreeDirectoryName", { fg = colors.white })
hi("NeoTreeFileName", { fg = colors.white })
hi("NeoTreeFileNameOpened", { fg = colors.amber, bold = true })
hi("NeoTreeSymbolicLinkTarget", { fg = colors.lavender })
hi("NeoTreeDimText", { fg = colors.muted })
hi("NeoTreeGitAdded", { fg = colors.green })
hi("NeoTreeGitModified", { fg = colors.blue })
hi("NeoTreeGitDeleted", { fg = colors.coral })
hi("NeoTreeGitConflict", { fg = colors.coral })
hi("NeoTreeGitUntracked", { fg = colors.green })
hi("NeoTreeGitIgnored", { fg = colors.muted })
hi("NeoTreeFloatNormal", { fg = colors.white, bg = colors.panel })
hi("NeoTreeFloatBorder", { fg = colors.border, bg = colors.panel })
hi("NeoTreeFloatTitle", { fg = colors.amber, bg = colors.panel, bold = true })

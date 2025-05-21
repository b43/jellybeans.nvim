--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

local lush = require("lush")
local hsl = lush.hsl

-- Lush uses the HSL colorspace to define colors because it allows for
-- more natural operations on colors and the relationships between colors is
-- simpler to understand.
--
-- Instead of RGB where you specify red, green and blue components, HSL uses:
--
-- Hue        (0 - 360) (each value is a angle around the color wheel)
-- Saturation (0 - 100) (0 is gray, 100 is colored)
-- Lightness  (0 - 100) (0 is black, 100 is white)
--
-- :lua print((function(c) return string.format("hsl(%d, %d, %d)", c.h, c.s, c.l) end)(require("lush.hsl")("#de5577")))

-- Groups:
-- black gray white
local black = hsl("#000000") -- hsl(0, 0, 0)
local gray_6 = hsl("#101010") -- hsl(0, 0, 6)
local background = hsl("#151515") -- hsl(0, 0, 8)
local gray_11 = hsl("#1c1c1c") -- hsl(0, 0, 11)
local gray_12 = hsl("#1f1f1f") -- hsl(0, 0, 12)
local gray_14 = hsl("#232323") -- hsl(0, 0, 14)
local gray_25 = hsl("#404040") -- hsl(0, 0, 25)
local gray_27 = hsl("#444444") -- hsl(0, 0, 27)
local gray_38 = hsl("#606060") -- hsl(0, 0, 38)
local gray_47 = hsl("#777777") -- hsl(0, 0, 47)
local gray_53 = hsl("#888888") -- hsl(0, 0, 53)
local gray_78 = hsl("#c7c7c7") -- hsl(0, 0, 78)
local gray_87 = hsl("#dddddd") -- hsl(0, 0, 87)
local gray_93 = hsl("#eeeeee") -- hsl(0, 0, 93)
local gray_94 = hsl("#f0f0f0") -- hsl(0, 0, 94)
local white = hsl("#ffffff") -- hsl(0, 0, 100)

-- 0 ≤ h < 30 — red
local red_10 = hsl("#902020") -- hsl(0, 64, 35)
local red_20 = hsl("#605958") -- hsl(7, 4, 36)
local red_30 = hsl("#ccc5c4") -- hsl(7, 7, 78)
local red_40 = hsl("#cf6a4c") -- hsl(14, 58, 55)

-- 30 ≤ h < 60 — orange
local orange_10 = hsl("#c59f6f") -- hsl(33, 43, 60)
local orange_20 = hsl("#ffb964") -- hsl(33, 100, 70)
local orange_30 = hsl("#fad07a") -- hsl(40, 93, 73)
local orange_40 = hsl("#dad085") -- hsl(53, 53, 69)

-- 60 ≤ h < 90 — yellow_green
local foreground = hsl("#e8e8d3") -- hsl(60, 31, 87)
local yellow_green_20 = hsl("#99ad6a") -- hsl(78, 29, 55)
local yellow_green_30 = hsl("#556633") -- hsl(80, 33, 30)
local yellow_green_40 = hsl("#405026") -- hsl(83, 36, 23)
local yellow_green_50 = hsl("#b9ed67") -- hsl(83, 79, 67)

-- 90 ≤ h < 120 — green_yellow
local green_yellow_10 = hsl("#437019") -- hsl(91, 64, 27)
local green_yellow_20 = hsl("#d2ebbe") -- hsl(93, 53, 83)
local green_yellow_30 = hsl("#799d6a") -- hsl(102, 21, 52)
local green_yellow_40 = hsl("#70b950") -- hsl(102, 43, 52)

-- 120 ≤ h < 150 — green

-- 150 ≤ h < 180 — green_cyan
local green_cyan_10 = hsl("#2d7067") -- hsl(172, 43, 31)

-- 180 ≤ h < 210 — cyan
local cyan_10 = hsl("#668799") -- hsl(201, 20, 50)
local cyan_20 = hsl("#2b5b77") -- hsl(202, 47, 32)
local cyan_30 = hsl("#8fbfdc") -- hsl(203, 52, 71)
local cyan_40 = hsl("#447799") -- hsl(204, 38, 43)
local cyan_50 = hsl("#535d66") -- hsl(208, 10, 36)

-- 210 ≤ h < 240 — blue_cyan
local blue_cyan_10 = hsl("#9098a0") -- hsl(210, 8, 60)
local blue_cyan_20 = hsl("#a0a8b0") -- hsl(210, 9, 66)
local blue_cyan_30 = hsl("#b0b8c0") -- hsl(210, 11, 72)
local blue_cyan_40 = hsl("#384048") -- hsl(210, 13, 25)
local blue_cyan_50 = hsl("#556779") -- hsl(210, 17, 40)
local blue_cyan_60 = hsl("#b0d0f0") -- hsl(210, 68, 82)
local blue_cyan_70 = hsl("#7597c6") -- hsl(215, 42, 62)
local blue_cyan_80 = hsl("#deebfe") -- hsl(216, 94, 93)
local blue_cyan_90 = hsl("#345fa8") -- hsl(218, 53, 43)
local blue_cyan_100 = hsl("#8197bf") -- hsl(219, 33, 63)
local blue_cyan_110 = hsl("#7697d6") -- hsl(219, 54, 65)

-- 240 ≤ h < 270 — blue
local blue_10 = hsl("#0000df") -- hsl(240, 100, 44)
local blue_20 = hsl("#c6b6fe") -- hsl(253, 97, 85)
local blue_30 = hsl("#c6b6ee") -- hsl(257, 62, 82)

-- 270 ≤ h < 300 — blue_magenta
local blue_magenta_10 = hsl("#403c41") -- hsl(288, 4, 25)
local blue_magenta_20 = hsl("#700089") -- hsl(289, 100, 27)
local blue_magenta_30 = hsl("#540063") -- hsl(291, 100, 19)

-- 300 ≤ h < 330 — magenta
local magenta_10 = hsl("#4f0037") -- hsl(318, 100, 15)
local magenta_20 = hsl("#a40073") -- hsl(318, 100, 32)
local magenta_30 = hsl("#dd0093") -- hsl(320, 100, 43)

-- 330 ≤ h < 360 — red_magenta
local red_magenta_10 = hsl("#302028") -- hsl(330, 20, 16)
local red_magenta_20 = hsl("#de5577") -- hsl(345, 67, 60)
local red_magenta_30 = hsl("#f0a0c0") -- hsl(336, 73, 78)
local red_magenta_40 = hsl("#40000a") -- hsl(351, 100, 13)
local red_magenta_50 = hsl("#700009") -- hsl(355, 100, 22)

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn({ bg = gray_11 }), -- Columns set with 'colorcolumn'
    Conceal({ fg = cyan_30 }), -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor({ fg = background, bg = blue_cyan_60 }), -- Character under the cursor
    -- CurSearch({}), -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor({}), -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM({}), -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn({ bg = gray_11 }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine({ bg = gray_11 }), -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory({ fg = orange_40 }), -- Directory names (and other special names in listings)

    -- Diff
    DiffAdd({ fg = green_yellow_20, bg = green_yellow_10 }), -- Diff mode: Added line |diff.txt|
    DiffChange({ bg = cyan_20 }), -- Diff mode: Changed line |diff.txt|
    DiffDelete({ fg = red_magenta_40, bg = red_magenta_50 }), -- Diff mode: Deleted line |diff.txt|
    DiffText({ fg = cyan_30, bg = black, gui = "reverse" }), -- Diff mode: Changed text within a changed line |diff.txt|

    -- EndOfBuffer({}), -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor({}), -- Cursor in a focused terminal
    -- TermCursorNC({}), -- Cursor in an unfocused terminal
    ErrorMsg({ bg = red_10 }), -- Error messages on the command line
    WinSeparator({ fg = gray_47, bg = blue_magenta_10 }), -- Separators between window splits.
    Folded({ fg = blue_cyan_20, bg = blue_cyan_40, gui = "italic" }), -- Line used for closed folds
    FoldColumn({ fg = cyan_50, bg = gray_12 }), -- 'foldcolumn'
    SignColumn({ fg = gray_47 }), -- Column where |signs| are displayed
    -- IncSearch({}), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute({}), -- |:substitute| replacement text highlighting
    LineNr({ fg = red_20 }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove({}), -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow({}), -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr({ fg = red_30 }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold({}), -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign({}), -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen({ fg = magenta_30, bg = black, gui = "bold" }), -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg({}), -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea({}), -- Area for messages and cmdline
    -- MsgSeparator({}), -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg({ fg = green_yellow_30 }), -- |more-prompt|
    NonText({ fg = gray_38 }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal({ fg = foreground, bg = background }), -- Normal text
    -- NormalFloat({}), -- Normal text in floating windows.
    -- FloatBorder({}), -- Border of floating windows.
    -- FloatTitle({}), -- Title of floating windows.
    -- FloatFooter({}), -- Footer of floating windows.
    -- NormalNC({}), -- normal text in non-current windows

    -- Popup menu
    Pmenu({ fg = white, bg = gray_38 }), -- Popup menu: Normal item.
    PmenuSel({ fg = gray_6, bg = gray_93 }), -- Popup menu: Selected item.
    -- PmenuKind({}), -- Popup menu: Normal item "kind"
    -- PmenuKindSel({}), -- Popup menu: Selected item "kind"
    -- PmenuExtra({}), -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel({}), -- Popup menu: Selected item "extra text"
    -- PmenuSbar({}), -- Popup menu: Scrollbar.
    -- PmenuThumb({}), -- Popup menu: Thumb of the scrollbar.
    Question({ fg = green_yellow_40 }), -- |hit-enter| prompt and yes/no questions
    QuickFixLine({ bg = blue_cyan_40 }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search({ fg = red_magenta_30, bg = red_magenta_10 }), -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SnippetTabstop({}), -- Tabstops in snippets.
    SpecialKey({ fg = gray_27, bg = gray_11 }), -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|

    -- Spell Checking
    SpellBad({ ErrorMsg, gui = "underline" }), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap({ bg = blue_10, gui = "underline" }), -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal({ bg = green_cyan_10, gui = "underline" }), -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare({ bg = blue_magenta_30, gui = "underline" }), -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.

    StatusLine({ fg = black, bg = gray_87, gui = "italic" }), -- Status line of current window
    StatusLineNC({ fg = white, bg = blue_magenta_10, gui = "italic" }), -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.

    TabLine({ fg = black, bg = gray_47 }), -- Tab pages line, not active tab page label
    TabLineFill({ fg = blue_cyan_10 }), -- Tab pages line, where there are no labels
    TabLineSel({ fg = black, bg = blue_cyan_50, gui = "bold" }), -- Tab pages line, active tab page label

    Title({ fg = green_yellow_40, gui = "bold" }), -- Titles for output from ":set all", ":autocmd" etc.
    Visual({ bg = gray_25 }), -- Visual mode selection
    -- VisualNOS({}), -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg({}), -- Warning messages
    -- Whitespace({}), -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu({ fg = red_magenta_30, bg = red_magenta_10 }), -- Current match in 'wildmenu' completion
    -- WinBar({}), -- Window bar of current window
    -- WinBarNC({}), -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment({ fg = gray_53, gui = "italic" }), -- Any comment

    Constant({ fg = red_40 }), -- (*) Any constant
    String({ fg = yellow_green_20 }), --   A string constant: "this is a string"
    -- Character({}), --   A character constant: 'c', '\n'
    -- Number({}), --   A number constant: 234, 0xff
    -- Boolean({}), --   A boolean constant: TRUE, false
    -- Float({}), --   A floating point constant: 2.3e10

    Identifier({ fg = blue_30 }), -- (*) Any variable name
    Function({ fg = orange_30 }), --   Function name (also: methods for classes)

    Statement({ fg = blue_cyan_100 }), -- (*) Any statement
    -- Conditional({}), --   if, then, else, endif, switch, etc.
    -- Repeat({}), --   for, do, while, etc.
    -- Label({}), --   case, default, etc.
    Operator({ fg = cyan_30 }), --   "sizeof", "+", "*", etc.
    -- Keyword({}), --   any other keyword
    -- Exception({}), --   try, catch, throw

    PreProc({ fg = cyan_30 }), -- (*) Generic Preprocessor
    Include({ PreProc, gui = "italic" }), --   Preprocessor #include
    -- Define({}), --   Preprocessor #define
    -- Macro({}), --   Same as Define
    -- PreCondit({}), --   Preprocessor #if, #else, #endif, etc.

    Type({ fg = orange_20 }), -- (*) int, long, char, etc.
    -- StorageClass({}), --   static, register, volatile, etc.
    Structure({ fg = cyan_30 }), --   struct, union, enum, etc.
    -- Typedef({}), --   A typedef

    Special({ fg = green_yellow_30 }), -- (*) Any special symbol
    -- SpecialChar({}), --   Special character in a constant
    -- Tag({}), --   You can use CTRL-] on this
    Delimiter({ fg = cyan_10 }), --   Character that needs attention
    -- SpecialComment({}), --   Special things inside a comment (e.g. '\n')
    -- Debug({}), --   Debugging statements

    Underlined({ gui = "underline" }), -- Text that stands out, HTML links
    -- Ignore({}), -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error({ ErrorMsg }), -- Any erroneous construct
    Todo({ fg = gray_78, gui = "bold" }), -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    --
    -- Added({}), -- added line in a diff
    -- Changed({}), -- changed line in a diff
    -- Removed({}), -- removed line in a diff

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    LspReferenceText({ bg = gray_14 }), -- Used for highlighting "text" references
    LspReferenceRead({ bg = gray_14 }), -- Used for highlighting "read" references
    LspReferenceWrite({ bg = gray_14 }), -- Used for highlighting "write" references
    -- LspInlayHint({}), -- Used for highlighting inlay hints
    -- LspCodeLens({}), -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator({}), -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter({}), -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError({ fg = red_10.lighten(20) }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn({ fg = orange_20 }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo({ fg = blue_cyan_60 }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint({ fg = green_yellow_20 }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk({ fg = green_yellow_40 }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)

    DiagnosticVirtualTextError({ DiagnosticError, bg = red_10.darken(72) }), -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn({ DiagnosticWarn, bg = orange_20.darken(88) }), -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo({ DiagnosticInfo, bg = blue_cyan_60.darken(87) }), -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint({ DiagnosticHint, bg = green_yellow_20.darken(90) }), -- Used for "Hint" diagnostic virtual text.
    DiagnosticVirtualTextOk({ DiagnosticOk, bg = green_yellow_40.darken(90) }), -- Used for "Ok" diagnostic virtual text.

    DiagnosticUnderlineError({ sp = red_10.lighten(20), gui = "undercurl" }), -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn({ sp = orange_20, gui = "undercurl" }), -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo({ sp = blue_cyan_60, gui = "undercurl" }), -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint({ sp = green_yellow_20, gui = "undercurl" }), -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk({ sp = green_yellow_40, gui = "undercurl" }), -- Used to underline "Ok" diagnostics.

    -- DiagnosticFloatingError({}), -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn({}), -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo({}), -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint({}), -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk({}), -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError({}), -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn({}), -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo({}), -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint({}), -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk({}), -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- https://github.com/nvim-treesitter/nvim-treesitter/blob/main/CONTRIBUTING.md
    -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/queries/ruby/highlights.scm
    -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/queries/go/highlights.scm

    -- Identifiers
    -- sym("@variable")({ Normal }), -- various variable names
    sym("@variable.builtin")({ fg = red_40 }), -- built-in variable names (e.g. `this`, `self`)
    -- sym("@variable.parameter")({ Normal }), -- parameters of a function
    -- sym("@variable.parameter.builtin")({ Normal }), -- special parameters (e.g. `_`, `it`)
    sym("@variable.member")({ fg = blue_20 }), -- object and struct fields

    sym("@constant")({ Type }), -- constant identifiers
    sym("@constant.builtin")({ fg = red_40 }), -- built-in constant values
    -- sym("@constant.macro")({}), -- constants defined by the preprocessor

    -- sym("@module")({}), -- modules or namespaces
    -- sym("@module.builtin")({}), -- built-in modules or namespaces
    -- sym("@label")({}), -- `GOTO` and other labels (e.g. `label:` in C), including heredoc labels

    -- Literals
    sym("@string")({ String }), -- string literals
    -- sym("@string.documentation")({}), -- string documenting code (e.g. Python docstrings)
    sym("@string.regexp")({ fg = magenta_30 }), -- regular expressions
    -- sym("@string.escape")({}), -- escape sequences
    -- sym("@string.special")({}), -- other special strings (e.g. dates)
    sym("@string.special.symbol")({ fg = blue_cyan_110 }), -- symbols or atoms
    -- sym("@string.special.path")({}), -- filenames
    -- sym("@string.special.url")({}), -- URIs (e.g. hyperlinks)

    -- sym("@character")({}), -- character literals
    -- sym("@character.special")({}), -- special characters (e.g. wildcards)

    -- sym("@boolean")({}), -- boolean literals
    -- sym("@number")({}), -- numeric literals
    -- sym("@number.float")({}), -- floating-point number literals

    -- Types
    -- sym("@type")({}), -- type or class definitions and annotations
    sym("@type.builtin")({ Type }), -- built-in types
    -- sym("@type.definition")({}), -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)

    -- sym("@attribute")({}), -- attribute annotations (e.g. Python decorators, Rust lifetimes)
    -- sym("@attribute.builtin")({}), -- builtin annotations (e.g. `@property` in Python)
    -- sym("@property")({}), -- the key in key/value pairs

    -- Functions
    sym("@function")({ Function }), -- function definitions
    sym("@function.builtin")({ fg = blue_cyan_70 }), -- built-in functions
    -- sym("@function.call")({}), -- function calls
    -- sym("@function.macro")({}), -- preprocessor macros
    -- sym("@function.method")({}), -- method definitions
    -- sym("@function.method.call")({}), -- method calls

    -- sym("@constructor")({}), -- constructor calls and definitions
    -- sym("@operator")({}), -- symbolic operators (e.g. `+`, `*`)
    sym("@operator.regex")({ fg = magenta_20 }), -- operators in regex

    -- Keywords
    sym("@keyword")({ fg = cyan_40 }), -- keywords not fitting into specific categories
    -- sym("@keyword.coroutine")({}), -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    sym("@keyword.function")({ fg = cyan_30 }), -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    -- sym("@keyword.operator")({}), -- operators that are English words (e.g. `and`, `or`)
    sym("@keyword.import")({ fg = cyan_30 }), -- keywords for including modules (e.g. `import`, `from` in Python)
    -- sym("@keyword.type")({}), -- keywords defining composite types (e.g. `struct`, `enum`)
    -- sym("@keyword.modifier")({}), -- keywords defining type modifiers (e.g. `const`, `static`, `public`)
    sym("@keyword.repeat")({ fg = blue_cyan_70 }), -- keywords related to loops (e.g. `for`, `while`)
    sym("@keyword.return")({ fg = cyan_30 }), -- keywords like `return` and `yield`
    -- sym("@keyword.debug")({}), -- keywords related to debugging
    sym("@keyword.exception")({ fg = blue_cyan_110 }), -- keywords related to exceptions (e.g. `throw`, `catch`)
    sym("@keyword.conditional")({ fg = blue_cyan_70 }), -- keywords related to conditionals (e.g. `if`, `else`)
    -- sym("@keyword.conditional.ternary")({}), -- ternary operator (e.g. `?`, `:`)
    -- sym("@keyword.directive")({}), -- various preprocessor directives and shebangs
    -- sym("@keyword.directive.define")({}), -- preprocessor definition directives

    -- Punctuation
    -- sym("@punctuation.delimiter")({}), -- delimiters (e.g. `;`, `.`, `,`)
    -- sym("@punctuation.bracket")({}), -- brackets (e.g. `()`, `{}`, `[]`)
    sym("@punctuation.special")({ Identifier }), -- special symbols (e.g. `{}` in string interpolation)

    -- Comments
    -- sym("@comment")({}), -- line and block comments
    -- sym("@comment.documentation")({}), -- comments documenting code
    -- sym("@comment.error")({}), -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
    -- sym("@comment.warning")({}), -- warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
    -- sym("@comment.todo")({}), -- todo-type comments (e.g. `TODO`, `WIP`)
    -- sym("@comment.note")({}), -- note-type comments (e.g. `NOTE`, `INFO`, `XXX`)

    -- Markup
    -- Mainly for markup languages(ex. *.md)
    sym("@markup.strong")({ gui = "bold" }), -- bold text
    sym("@markup.italic")({ gui = "italic" }), -- italic text
    sym("@markup.strikethrough")({ gui = "strikethrough" }), -- struck-through text
    sym("@markup.underline")({ gui = "underline" }), -- underlined text (only for literal underline markup!)

    -- sym("@markup.heading")({}), -- headings, titles (including markers)
    -- sym("@markup.heading.1")({}), -- top-level heading
    -- sym("@markup.heading.2")({}), -- section heading
    -- sym("@markup.heading.3")({}), -- subsection heading
    -- sym("@markup.heading.4")({}), -- and so on
    -- sym("@markup.heading.5")({}), -- and so forth
    -- sym("@markup.heading.6")({}), -- six levels ought to be enough for anybody
    --
    -- sym("@markup.quote")({}), -- block quotes
    -- sym("@markup.math")({}), -- math environments (e.g. `$ ... $` in LaTeX)
    --
    -- sym("@markup.link")({}), -- text references, footnotes, citations, etc.
    -- sym("@markup.link.label")({}), -- link, reference descriptions
    sym("@markup.link.url")({ fg = cyan_30 }), -- URL-style links
    --
    -- sym("@markup.raw")({}), -- literal or verbatim text (e.g. inline code)
    -- sym("@markup.raw.block")({}), -- literal or verbatim text as a stand-alone block
    --
    -- sym("@markup.list")({}), -- list markers
    -- sym("@markup.list.checked")({}), -- checked todo-style list markers
    -- sym("@markup.list.unchecked")({}), -- unchecked todo-style list markers

    -- sym("@diff.plus")({}), -- added text (for diff files)
    -- sym("@diff.minus")({}), -- deleted text (for diff files)
    -- sym("@diff.delta")({}), -- changed text (for diff files)

    -- sym("@tag")({}), -- XML-style tag names (e.g. in XML, HTML, etc.)
    -- sym("@tag.builtin")({}), -- XML-style tag names (e.g. HTML5 tags)
    -- sym("@tag.attribute")({}), -- XML-style tag attributes
    sym("@tag.delimiter")({ fg = blue_cyan_50 }), -- XML-style tag delimiters

    -- golang
    sym("@module.go")({ Type }), -- XML-style tag names (e.g. in XML, HTML, etc.)
    sym("@variable.member.go")({ fg = blue_cyan_110 }), -- the key in key/value pairs

    -- Telescope
    -- https://github.com/nvim-telescope/telescope.nvim/blob/master/plugin/telescope.lua
    TelescopeBorder({ fg = blue_cyan_100 }),
    TelescopeSelection({ fg = blue_cyan_100.lighten(46), bg = blue_cyan_100.darken(74) }),
    TelescopeMatching({ Search }),
    TelescopeSelectionCaret({ fg = orange_20 }),
    TelescopePromptPrefix({ fg = orange_20 }),

    -- GitSigns
    -- :h gitsigns-highlight-groups
    GitSignsAdd({ fg = green_yellow_40 }),
    GitSignsChange({ fg = orange_20 }),
    GitSignsDelete({ fg = red_10.lighten(20) }),

    -- NvimTree
    -- https://github.com/nvim-tree/nvim-tree.lua/blob/master/lua/nvim-tree/appearance/init.lua
    NvimTreeRootFolder({ Directory, gui = "bold" }),
    NvimTreeGitDirtyIcon({ GitSignsChange }),
    NvimTreeGitStagedIcon({ GitSignsChange }),
    NvimTreeGitMergeIcon({ GitSignsChange }),
    NvimTreeGitRenamedIcon({ GitSignsChange }),
    NvimTreeGitNewIcon({ GitSignsAdd }),
    NvimTreeGitDeletedIcon({ GitSignsDelete }),

    -- indent-blankline
    IblOdd({ fg = gray_14 }),
    IblEven({ fg = gray_11 }),

    -- blink.cmp
    -- https://cmp.saghen.dev/configuration/appearance.html
    BlinkCmpMenu({ fg = foreground, bg = background }), -- Default Pmenu -- The completion menu window
    BlinkCmpMenuBorder({ fg = blue_cyan_100, bg = background }), -- Default Pmenu -- The completion menu window border
    BlinkCmpMenuSelection({ fg = blue_cyan_100.lighten(46), bg = blue_cyan_100.darken(74) }), -- Default PmenuSel -- The completion menu window selected item

    BlinkCmpScrollBarThumb({ bg = blue_cyan_100 }), -- Default PmenuThumb -- The scrollbar thumb
    -- BlinkCmpScrollBarGutter({}), -- Default PmenuSbar -- The scrollbar gutter

    -- BlinkCmpLabel({}), -- Default Pmenu -- Label of the completion item
    BlinkCmpLabelMatch({ fg = red_magenta_30, bg = red_magenta_10 }), -- Default Pmenu -- (Currently unused) Label of the completion item when it matches the query
    -- BlinkCmpLabelDeprecated({}), -- Default PmenuExtra -- Deprecated label of the completion item
    -- BlinkCmpLabelDetail({}), -- Default PmenuExtra -- Label description of the completion item
    -- BlinkCmpLabelDescription({}), -- Default PmenuExtra -- Label description of the completion item
    BlinkCmpKind({ fg = blue_cyan_100, bg = background }), -- Default PmenuKind -- Kind icon/text of the completion item
    BlinkCmpKindCopilot({ fg = blue_30 }), -- BlinkCmpKind<kind> -- Default PmenuKind -- Kind icon/text of the completion item
    -- BlinkCmpSource({}), -- Default PmenuExtra -- Source of the completion item

    -- BlinkCmpGhostText({}), -- Default NonText -- Preview item with ghost text

    BlinkCmpDoc({ bg = background }), -- Default NormalFloat -- The documentation window
    BlinkCmpDocBorder({ fg = blue_cyan_100, bg = background }), -- Default NormalFloat, -- The documentation window border
    BlinkCmpDocSeparator({ fg = blue_cyan_100, bg = background }), -- Default NormalFloat -- The documentation separator between doc and detail
    -- BlinkCmpDocCursorLine({}), -- Default Visual -- The documentation window cursor line

    -- BlinkCmpSignatureHelp({}), -- Default NormalFloat -- The signature help window
    BlinkCmpSignatureHelpBorder({ fg = blue_cyan_100, bg = background }), -- Default NormalFloat -- The signature help window border
    -- BlinkCmpSignatureHelpActiveParameter({}), -- Default LspSignatureActiveParameter -- The active parameter in the signature help window
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap

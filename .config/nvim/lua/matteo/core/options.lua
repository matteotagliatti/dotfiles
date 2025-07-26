local opt = vim.opt

opt.clipboard = "unnamed"
opt.termguicolors = true -- true color support
opt.number = true -- show absolute line number on cursor line (when relative number is on)
opt.relativenumber = true -- show relative line numbers
opt.mouse = "a" -- enable mouse mode
opt.showmode = false -- don't show the mode, since it's already in status line
opt.breakindent = true -- enable break indent
opt.undofile = true -- save undo history
opt.signcolumn = "yes" -- keep signcolumn on by default
opt.inccommand = "split" -- preview substitutions live, as you type!
opt.cursorline = true -- show which line your cursor is on
opt.scrolloff = 10 -- minimal number of screen lines to keep above and below the cursor.

-- Indentation
opt.expandtab = true -- use spaces instead of tabs
opt.shiftwidth = 2 -- size of an indent
opt.tabstop = 2 -- number of spaces tabs count for
opt.smartindent = true -- insert indents automatically

-- case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- decrease update time
opt.updatetime = 250

-- configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

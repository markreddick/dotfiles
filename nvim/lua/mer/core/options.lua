vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs (prettier default)
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.softtabstop = 4 -- 4 spaces for soft tabs
opt.expandtab = false -- do not expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.hlsearch = true -- highlight search matches
opt.incsearch = true -- highlight search matches as you type

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.colorcolumn = {"80", "120"} -- add colored line at specified columns

opt.fileencoding = "utf-8" -- saving encoding
opt.writebackup = false -- turn off write backups
opt.autoread = true -- autoread files changed externally if no changes made locally
opt.mousehide = false -- do not hide hte mouse cursor while typing
opt.foldenable = false -- disable code folding
opt.scrolloff = 3 -- scroll the dinwo so we can always see x lines around the cursor
opt.showmatch = true -- highlights matching parens/brackets
opt.showtabline = 2 -- always show tab bar
opt.laststatus = 2 -- always enable status line
opt.equalalways = false -- turn off making split windows always equal sizes
opt.shada = "'1000,f1,<500,%"

opt.fillchars = { vert = "│" }
opt.list = true
opt.listchars = {
	nbsp = "·",
	tab = "│·",
	trail = "▲"
}

-- undo files
local undodir = vim.fn.stdpath("state") .. "/undo" -- where to save undo files
-- create the undo directory if it doesn't exist
if vim.fn.isdirectory(undodir) == 0 then
	vim.fn.mkdir(undodir, 'p')
end
opt.undodir = undodir
opt.undofile = true -- create undo files so undos carry over even after closed
opt.undolevels =5000 -- store up to 5000 levels of undo history

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

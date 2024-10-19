-- tabstop
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- enable smart auto indenting
vim.opt.smartindent = true
vim.opt.shiftwidth = 4

-- auto indentation for paragraphs/word wrapping
vim.opt.breakindent = true

-- set <leader> to spacebar
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- window splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- undo history
vim.opt.undofile = true

-- always show signcolumn for no screen jumping
vim.opt.signcolumn = "yes"

-- line numbers
vim.cmd("set number")

-- cursor highlight line
vim.opt.cursorline = true

-- keep 8 line buffer above/below cursor
vim.opt.scrolloff = 8

-- cursor blinking
vim.opt.guicursor = {
  "a:blinkwait700-blinkoff400-blinkon250",
}

-- word wrapping
vim.cmd("set wrap")
vim.cmd("set linebreak")

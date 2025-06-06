vim.g.mapleader = " "

vim.cmd([[set shellpipe=>%s\ 2>&1]])

vim.opt.number = true


vim.o.tabstop = 8
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4

require("aarushmurari.core")
require("aarushmurari.lazy")

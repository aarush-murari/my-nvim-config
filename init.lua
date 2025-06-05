vim.g.mapleader = " "

vim.cmd([[set shellpipe=>%s\ 2>&1]])

vim.opt.number = true

require("aarushmurari.core")
require("aarushmurari.lazy")

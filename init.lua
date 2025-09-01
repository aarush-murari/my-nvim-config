vim.g.mapleader = " "

vim.cmd([[set shellpipe=>%s\ 2>&1]])

vim.o.number = true

vim.o.spelllang = 'en_us'
vim.o.spell = true

vim.o.tabstop = 8
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.g.lazyvim_prettier_needs_config = false
if type(vim.g.clipboard) == nil then
    vim.g.clipboard = "wl-copy"
end

if vim.g.vscode then
    local vscode = require("vscode")
    vim.notify = vscode.notify
    vim.notify("Entering limited vs-code mode...")
else
    vim.notify("No VS Code? Noice...")
end

vim.api.nvim_create_user_command(
    "EditConfig",
    function(opts)
        vim.cmd.edit(vim.fn.stdpath("config"))
    end,
    {}
)

require("aarushmurari.core")
require("aarushmurari.lazy")

local keymap = vim.keymap -- for conciseness
if vim.g.vscode then
    keymap.set("n", "<Leader>vrf", function() local vscode = require('vscode') vscode.call('editor.action.refactor') end, { noremap = true, silent = true }) -- refactor shit I guess

    keymap.set("n", "<leader>ee", function() local vscode = require('vscode') vscode.call('workbench.action.toggleSidebarVisibility') end, { noremap = true, silent = true, desc = "toggle dat sidebar"}) --toggle side bar so I don;t accidentally learn a different keybinding in regular vim

    keymap.set("n", "<leader>vee", function() local vscode = require('vscode') vscode.call('workbench.view.explorer') vscode.call('workbench.files.action.showActiveFileInExplorer') end, { noremap = true, silent = true, desc = "Toggle file explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>ec", function() local vscode = require('vscode') vscode.call('workbench.files.action.collapseExplorerFolders') end, { noremap = true, silent = true, desc = "Collapse file explorer" }) -- collapse file explorer
    keymap.set("n", "<leader>er", function() local vscode = require('vscode') vscode.call('workbench.files.action.refreshFilesExplorer') end, { noremap = true, silent = true, desc = "Refresh file explorer" }) -- refresh file explorer
    keymap.set("n", "<leader>pv", "<cmd>Ex<CR>", { noremap = true, silent = true, desc = "Toggle file explorer" })
else
    keymap.set("n", "<C-F1>", "<cmd>split<CR><C-w>j<cmd>term<CR>", { noremap = true, silent = true, desc = "Terminal like vscode"}) -- yes bitch, this is indeed a terminal binding bitch
end

return {}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>nd", ":lua require('neogen').generate()<CR>", opts)
return {
    "danymat/neogen", -- for class annotations and shit
    config = true,
}

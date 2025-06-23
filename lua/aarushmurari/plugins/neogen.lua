return { 
    "danymat/neogen", -- for class annotations and shit
    config = true,
    vim.keymap.set("n", "<leader>cds", "<cmd>Neogen<CR>", { desc = "create doc strong" }),
}

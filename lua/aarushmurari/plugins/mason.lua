
return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
	ensure_installed = { "clangd", "lua_ls", "jdtls", "neocmake", "pyright", "cssmodules_ls", "denols", "html", },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
    },


    vim.keymap.set("n", "<leader>sd", function() vim.diagnostic.open_float() end, { desc = "Show diagnostic in that line" }),
	vim.keymap.set("n", "<leader>nd", function() vim.diagnostic.goto_next() end, { desc = "Jump to next diagnostic" }),
	vim.keymap.set("n", "<leader>pd", function() vim.diagnostic.goto_prev() end, { desc = "Jump to previous diagnostic" })
}


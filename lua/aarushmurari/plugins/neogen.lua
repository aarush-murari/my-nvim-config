return { 
    "danymat/neogen", -- for class annotations and shit
    config = true,
    function()
        local opts = { noremap = true, silent = true },
        vim.api.nvim_set_keymap("n", "<Leader>nd", function() require('neogen').generate() end, opts)
    end,
}

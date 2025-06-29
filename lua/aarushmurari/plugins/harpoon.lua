return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    cond = not is_vscode,
    config = function()
      require("harpoon"):setup()
    end,
    keys = {
        { "<leader>a", function() require("harpoon"):list():add() end, desc = "harpoon file", },
        { "<M-h>", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
        { "<C-h>", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
        { "<C-j>", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
        { "<C-k>", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
        { "<C-l>", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
        { "<C-S-P>", function() require("harpoon"):list():prev() end, desc = "harpoon previous file"},
        { "<C-S-N>", function() require("harpoon"):list():next() end, desc = "harpoon next file"},
    },
}

return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
        require("harpoon").setup()
    end,
    keys = {
        {
            "<leader>a",
            function ()
                require("harpoon"):list():add()
            end,
            mode = "n",
            silent = true,
            desc = "Add a new harpoon mark",
        },
        {
            "<C-e>",
            function ()
                local harpoon = require("harpoon")
                harpoon.ui:toggle_quick_menu(harpoon:list())
            end,
            mode = "n",
            silent = true,
            desc = "Toggle the harpoon quick menu"
        },
    }
}

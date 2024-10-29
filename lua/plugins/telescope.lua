return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        local telescope = require('telescope')
        telescope.setup {
            defaults = {
                file_ignore_patterns = {
                    "node_modules",
                    ".cache"
                }
            }
        }
    end,
    keys = {
        {
            "<leader>pf",
            function ()
                require('telescope.builtin').find_files()
            end,
            mode = "n",
            silent = true,
            desc = "Find files"
        },
        {
            "<C-p>",
            function ()
                require('telescope.builtin').git_files()
            end,
            mode = "n",
            silent = true,
            desc = "Git files"
        },
        {
            "<leader>ps",
            function ()
                require('telescope.builtin').grep_string {
                    search = vim.fn.input("Grep > ")
                }
            end,
            mode = "n",
            silent = true,
            desc = "Grep string"
        }
    }
}

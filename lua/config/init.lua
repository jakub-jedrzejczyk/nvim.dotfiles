-- Print line number.
vim.opt.nu = true

-- Relative line numbering.
vim.opt.relativenumber = true

vim.opt.smartindent = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

local telescope = require('telescope')
telescope.setup {
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            ".cache"
        }
    }
}

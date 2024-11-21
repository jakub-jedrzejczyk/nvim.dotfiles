return
{
    "Bekaboo/deadcolumn.nvim",
    init = function ()
        local colors = require("tokyonight.colors").setup()

        local opts = {
            scope = "visible",
            blending = {
                threshold = 0.75,
                colorcode = "#ffffff",
                hlgroup = { 'NormalOpaque', 'bg' },
            },
            warning = {
                alpha = 0.4,
                colorcode = colors.red,
                hlgroup = { 'Error', 'bg' }
            }
        }
        require("deadcolumn").setup(opts)
    end,
    dependencies = {
        "folke/tokyonight.nvim"
    }
}

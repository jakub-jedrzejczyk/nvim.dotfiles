return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd[[colorscheme tokyonight]]
    vim.cmd("highlight CursorLine guibg=#2a2e3f")
    vim.wo.cursorline = true
  end,
}

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.termguicolors = true

-- load lazy plugins
require("config.lazy")

-- initialize user preferences
require("config.preferences")

-- initialize status bars
require('config.status')

-- initialize LSPs
require('config.lsp')

local uv = vim.loop

vim.api.nvim_create_autocmd({ 'VimEnter', 'VimLeave' }, {
	callback = function()
		if vim.env.TMUX_PLUGIN_MANAGER_PATH then
			uv.spawn(vim.env.TMUX_PLUGIN_MANAGER_PATH .. '/tmux-window-name/scripts/rename_session_windows.py', {})
		end
	end,
})

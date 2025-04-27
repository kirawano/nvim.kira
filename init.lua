local Plug = vim.fn['plug#']
local lspconfig = require("lspconfig")

vim.cmd("noremap <M-$> :!")
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.cmd("highlight Normal guibg=None")


vim.call('plug#begin')

Plug 'm4xshen/autoclose.nvim'
Plug 'catppuccin/nvim'
Plug 'folke/tokyonight.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

vim.call('plug#end')

vim.cmd[[colorscheme tokyonight-night]]

lspconfig.basedpyright.setup{}
lspconfig.clangd.setup{}
vim.keymap.set('n', '<C-e>', ":lua vim.diagnostic.open_float()<CR>")

require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 25,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})
vim.keymap.set('n', '<M-e>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<M-h>', ':NvimTreeFocus<CR>')

require("autoclose").setup()


-- GENERAL KEYMAPS

vim.keymap.set('n', '<C-w>', ':vsplit<CR>')

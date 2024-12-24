local vim = vim
local Plug = vim.fn['plug#']


vim.cmd("noremap <M-$> :!")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("highlight Normal guibg=None")

vim.call('plug#begin')

Plug('xiyaowong/transparent.nvim')

vim.call('plug#end')


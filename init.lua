-- bootstrap lazy.nvim, LazyVim and your plugins
-- "(„• ᴗ •„)"

require("config.lazy")
local lspconfig = require("lspconfig")
lspconfig.basedpyright.setup({})

vim.cmd("colorscheme tokyonight-night")
vim.cmd("noremap <M-$> :!")

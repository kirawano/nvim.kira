-- bootstrap lazy.nvim, LazyVim and your plugins
-- "(„• ᴗ •„)"

require("config.lazy")
local lspconfig = require("lspconfig")
lspconfig.basedpyright.setup({})

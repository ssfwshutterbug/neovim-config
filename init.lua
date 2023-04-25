require("plugins-config.autocmd")
require("plugins-config.cmp")
require("plugins-config.map")
require("plugins-config.lsp")
require("plugins-config.luasnip")
require("plugins-config.treesitter")
require("plugins-config.colorscheme")
require("plugins-config.lualine")
require("plugins-config.markdown-preview")
require("plugins-config.nvim-web-devicons")
require("plugins-config.vim-hexokinase")
require("plugins-config.nvim-tree")
require("plugins-config.indent-blankline")


--     alias              
local  g               =  vim.o     -- global
local  wl              =  vim.wo    -- local window
local  bl              =  vim.bo    -- local buffer


-- editor  settings
g.hlsearch         =       true
g.ignorecase       =       true
--g.tremguicolors  =       true
--g.termguicolor   =       true
g.signcolumn       =       'auto:5'
wl.number          =       true
wl.relativenumber  =       true
wl.linebreak       =       true
wl.cursorline      =       true
wl.spell           =       false
wl.colorcolumn     =       "80"
g.tabstop          =       4
g.shiftwidth       =       4
bl.expandtab       =       true

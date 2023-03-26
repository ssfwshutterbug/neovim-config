require("my-autocmd")
require("my-cmp")
require("my-map")
require("my-plugins")
require("my-lsp")
require("my-luasnip")


--     alias              
local  g               =  vim.o     -- global
local  wl              =  vim.wo    -- local window
local  bl              =  vim.bo    -- local buffer

-- editor settings
g.hlsearch         =  true
g.ignorecase       =  true
--g.tremguicolors    =  true
--g.termguicolor	   =  true
g.signcolumn	   =  'auto:5'
wl.number          =  true
wl.relativenumber  =  true
wl.linebreak       =  true
wl.cursorline      =  true
wl.spell           =  false
wl.colorcolumn     =  "80"
--g.softtabstop      =  4
--g.shiftwidth       =  4
g.tabstop	   = 4
g.shiftwidth	   = 4
bl.expandtab	   = true


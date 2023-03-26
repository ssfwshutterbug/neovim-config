local  g               =  vim.o
local  map             =  vim.api.nvim_set_keymap

-- map
map('n','<Space>', '',{})
--g.mapleader = ''

-- n:norm i:insert v:visual !cmd
local options = { noremap = true }
map('i'  ,'jk'       ,'<esc>'                       ,options)
map('v'  ,'jk'       ,'<esc>'                       ,options)
map('!'  ,'jk'       ,'<esc>'                       ,options)
map('n'  ,'/<cr>'    ,':nohlsearch<cr>'             ,options)
map('v'  ,'Y'        ,'"+y'                         ,options)
map('v'  ,'>'        ,'>gv'                         ,options)
map('v'  ,'<'        ,'<gv'                         ,options)
map('n'  ,'<c-p>'    ,'<Plug>MarkdownPreviewToggle' ,options)
map('n'  ,'<space>g' ,':Goyo 120x100%<cr>'          ,options)
map('n'  ,'<space>G' ,':Goyo!<cr>'                  ,options)
map('n'  ,'<c-n>'    ,':NvimTreeToggle<cr>'         ,options)
map('n'  ,'\\'       ,'z='		            		,options)
map('n'  ,'<c-j>'    ,'Lj``j'		           		,options)
map('n'  ,'<c-k>'    ,'Hk``k'		            	,options)
map('v'  ,'<space>f' ,'"+ygvd:r !xclip -o -sel clip |column -s  \' \' -o \' | \' -t <cr>' ,options) -- used to format markdown table.
map('v'  ,'<space>i' ,'"+ygvdk:r !xclip -o -sel clip |column -t <cr>' ,options) -- used to indent line.
map('n'  ,'Q'        ,':qa!<cr>'                    ,options)
map('v'  ,'<Down>'   ,'<esc>jddgvo<esc>Pgvo'        ,options) -- block down
map('v'  ,'<Up>'     ,'o<esc>kddgvo<esc>pgv'        ,options) -- block up
-- auto complete pairs
map('i'  ,'"'        ,'""<esc>i'                    ,options)
map('i'  ,'('        ,'()<esc>i'                    ,options)
map('i'  ,'['        ,'[]<esc>i'                    ,options)
map('i'  ,'{'        ,'{}<esc>i'                    ,options)
map('i'  ,'<'        ,'<><esc>i'                    ,options)
map('i'  ,'《'       ,'《》<esc>i'                  ,options)
map('i'  ,'\''       ,'\'\'<esc>i'                  ,options)
map('i'  ,'`'        ,'``<esc>i'                    ,options)
-- jump between window
map('n'  ,'<tab>'    ,'<c-w>w'                      ,options)


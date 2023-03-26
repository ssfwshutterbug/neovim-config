-- This is a brief plugin settings, including plugin settings which only has 
-- little settings. If one plugin has a lot of settings, then create a standalone
-- one.


-- import plugins file which contains all installed flugin.
require('plugins')


-- smooth scroll
require('neoscroll').setup()


-- color scheme
-- tokyonight
--vim.cmd [[colorscheme tokyonight-night]]

-- onedark way
require('onedark').setup {
    style = 'warmer'
}
require('onedark').load()


-- status line scheme
require('lualine').setup{
	options = { theme = 'papercolor_dark',
		section_separators = '',
		component_separators = ''
	}
}


-- markdown folding
vim.cmd [[let g:markdown_folding=1]]


-- code color
vim.cmd("let g:Hexokinase_highlighters = ['sign_column']")


-- file explorer
require("nvim-tree").setup({
	remove_keymaps = {"<Tab>"}
})


-- nvim-web-devicons
require'nvim-web-devicons'.get_icon(
	filename, extension, { default = true }
)

-- indent line
vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append "eol:↲"
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#333366 gui=nocombine]]
require("indent_blankline").setup {
    show_current_context = false,
    show_current_context_start = true,
	char_highlight_list = {
        "IndentBlanklineIndent1",
	},
}

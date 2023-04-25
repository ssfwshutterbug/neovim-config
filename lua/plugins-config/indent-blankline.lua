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


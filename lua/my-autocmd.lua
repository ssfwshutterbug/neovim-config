local  create_augroup  =  vim.api.nvim_create_augroup
local  create_autocmd  =  vim.api.nvim_create_autocmd

-- autocmd
create_augroup("bufcheck", {clear=true})

---- restore cursor shape of terminal _
--create_autocmd("VimLeave", {
	--group = "bufcheck",
	--pattern = "*",
	--command = "set guicursor=a:hor50"
--})

-- markdown speel check and fold level
create_autocmd({"BufRead","BufNewFile"}, {
	group = "bufcheck",
	pattern = {"*.md"},
	command = "set spell foldcolumn=4"
})

-- xmonad fold marker
create_autocmd("BufRead", {
	group = "bufcheck",
	pattern = {"xmonad.hs"},
	command = "set foldmethod=marker foldcolumn=2",
})

-- xmonad auto recompile and restart
create_autocmd("BufWritePost", {
	group = "bufcheck",
	pattern = {"xmonad.hs"},
	command = "!xmonad --recompile && xmonad --restart"
})

-- run rust
create_autocmd("BufWritePost", {
	group = "bufcheck",
	pattern = {"*.rs"},
	command = "!cargo run %"
})

-- run golang
create_autocmd("BufWritePost", {
	group = "bufcheck",
	pattern = {"*.go"},
	command = "!go run %"
})

-- resource Xresources
create_autocmd("BufWritePost", {
	group = "bufcheck",
	pattern = "Xresources",
	command = "!xrdb ~/.config/Xresources"
})

-- reload sxhkd
create_autocmd("BufWritePost", {
	group = "bufcheck",
	pattern = "sxhkdrc",
	command = "!pkill sxhkd && sxhkd &>/dev/null &"
})

-- reload lua config
create_autocmd("BufWritePost", {
	group = "bufcheck",
	pattern = "*.lua",
	command = "source %"
})

-- Add additional capabilities supported by nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- rust-analyzer
require('lspconfig')['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
	capabilities = capabilities,
}


-- lua-language-server
require'lspconfig'.lua_ls.setup {
    on_attach = on_attach,
    flags = lsp_flags,
	capabilities = capabilities,
	cmd = {
		"/home/mandalorian/.local/share/lua/bin/lua-language-server",
	}
}

-- gopls for golang
require('lspconfig').gopls.setup{
    on_attach = on_attach,
    flags = lsp_flags,
	capabilities = capabilities,
}

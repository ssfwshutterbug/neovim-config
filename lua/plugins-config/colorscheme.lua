
require("darkrose").setup({
    -- Override existing or add new highlight groups
    overrides = function()
        return {
            ["Search"] = { bg = "#00256d" },
        }
    end
})

vim.cmd.colorscheme("darkrose")

-- color scheme
-- tokyonight
--vim.cmd [[colorscheme tokyonight-night]]

-- onedark way
--require('onedark').setup {
--    style = 'warmer'
--}
--require('onedark').load()


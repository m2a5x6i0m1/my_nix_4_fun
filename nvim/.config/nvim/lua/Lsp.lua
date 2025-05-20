vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
	root_markers = { ".git" },
})

vim.lsp.enable("luals")
vim.lsp.enable("nil")
vim.lsp.enable("harper-ls")

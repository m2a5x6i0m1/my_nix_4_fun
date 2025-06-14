return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				cpp = { "clang-format" },
				lua = { "stylua" },
				nix = { "alejandra" },
				markdown = { "prettierd" },
				json = { "prettierd" },
				css = { "prettierd" },
			},

			format_on_save = {
				lsp_fallback = false,
				timeout = 500,
			},
		})
	end,
}

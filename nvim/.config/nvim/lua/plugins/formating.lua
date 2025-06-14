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

			format_after_save = {
				lsp_fallback = false,
				async = true,
			},
		})
	end,
}

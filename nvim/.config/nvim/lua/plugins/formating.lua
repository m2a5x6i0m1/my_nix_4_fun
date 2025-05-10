return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				cpp = { "clang-format" },
				lua = { "stylua" },
				nix = { "nixfmt" },
				markdown = { "prettierd" },
				json = { "prettierd" },
				css = { "prettierd" },
			},

			format_after_save = {
				lsp_fallback = true,
				async = true,
				-- timeout_ms = 2500,
			},
		})
	end,
}

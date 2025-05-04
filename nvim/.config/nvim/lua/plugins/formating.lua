return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				nix = { "nixfmt" },
				python = { "isort", "black" },
				cpp = { "clang-format" },
				css = { "prettier" },
				json = { "prettier" },
				markdown = { "prettierd" },
			},

			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 2500,
			},
		})
	end,
}

return {
	"folke/noice.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("noice").setup({
			lsp = {
				progress = { enabled = false },
				message = { enabled = false, view = "mini" },
				hover = { enabled = false },
				signature = { enabled = false },
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
				},
			},
			messages = { enabled = true },
			notify = { enabled = false },
			popupmenu = { enabled = false },
			presets = { bottom_search = false },

			views = {
				cmdline_popup = {
					position = { row = "71%" },
					size = { min_width = 61 },
				},
			},
		})
	end,
}

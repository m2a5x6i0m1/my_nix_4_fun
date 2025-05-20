return {
	"folke/noice.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("noice").setup({
			cmdline = {
				format = {
					search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
					search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
				},
			},
			lsp = {
				progress = { enabled = true },
				message = { enabled = true, view = "mini" },
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
			presets = { bottom_search = true },

			views = {
				cmdline_popup = {
					position = { row = "71%" },
					size = { min_width = 61 },
				},
			},
		})
	end,
}

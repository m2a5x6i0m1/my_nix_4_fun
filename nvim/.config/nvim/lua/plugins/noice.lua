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
				progress = { enabled = false },
				message = { enabled = false, view = "mini" },
				hover = { enabled = false },
				signature = { enabled = false },
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

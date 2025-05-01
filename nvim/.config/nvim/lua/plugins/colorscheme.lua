return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
			transparent_background = false,
			integrations = {
				blink_cmp = true,
				noice = true,
				notify = true,
				which_key = true,
				snacks = {
					enabled = true,
				},
			},

			custom_highlights = function(colors)
				return {
					["@markup.quote"] = { fg = colors.subtext1, style = {} },
					["RenderMarkdownQuote"] = { fg = colors.maroon },
				}
			end,
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}

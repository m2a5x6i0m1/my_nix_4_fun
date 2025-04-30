return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	ft = { "markdown" },
	config = function()
		require("render-markdown").setup({
			completions = { lsp = { enabled = true } },
			render_modes = true,
			callout = {
				quote = {
					raw = "[!QUOTE]",
					rendered = "󱆨 Quote",
					highlight = "RenderMarkdownQuote",
					category = "obsidian",
				},
				cite = {
					raw = "[!CITE]",
					rendered = "󱆨 Cite",
					highlight = "RenderMarkdownQuote",
					category = "obsidian",
				},
			},
			heading = {
				border = true,
				sign = false,
			},
			checkbox = {
				unchecked = { icon = " 󰄱 " },
				checked = {
					icon = " 󰱒 ",
					-- scope_highlight = "@markup.strikethrough"
				},
			},
			code = {
				sign = false,
				position = "right",
				border = "thick",
				width = "block",
				left_pad = 2,
				right_pad = 2,
				min_width = 50,
			},
		})
		vim.keymap.set("n", "<leader>tm", "<cmd>RenderMarkdown buf_toggle<cr>", { desc = "Toggle markdown rendering" })
	end,
}

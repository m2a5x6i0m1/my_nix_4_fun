return {
	"saghen/blink.cmp",
	version = "*",
	opts = {
		keymap = {
			preset = "none",
			["<]]>"] = { "snippet_forward", "fallback" },
			["<[[>"] = { "snippet_backward", "fallback" },
			["<Tab>"] = { "select_next", "fallback" },
			["<M-Tab>"] = { "select_prev", "fallback" },
			["<CR>"] = { "accept", "fallback" },
		},

		completion = {
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 600,
				window = { max_height = 10 },
			},
			list = {
				selection = { preselect = false, auto_insert = false },
			},
			menu = {
				draw = {
					columns = {
						{ "kind_icon" },
						{ gap = 1, "label", "label_description" },
						{ gap = 2, "kind" },
					},
				},
				max_height = 10,
				scrollbar = false,
				direction_priority = { "n", "s" },
			},
			keyword = { range = "full" },
			ghost_text = { enabled = true },
			accept = { auto_brackets = { enabled = true } },
		},

		cmdline = {
			keymap = { preset = "inherit" },
			completion = {
				list = { selection = { preselect = false, auto_insert = false } },
				menu = { auto_show = true },
			},
		},
		appearance = {
			use_nvim_cmp_as_default = false,
			nerd_font_variant = "normal",
		},
		signature = { enabled = true },
	},
}

return {
	"folke/flash.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {},
	keys = {
		{
			"<M-/>",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump()
			end,
			desc = "Flash",
		},
	},
}

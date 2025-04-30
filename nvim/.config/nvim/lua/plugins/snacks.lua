return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {

		bigfile = { enabled = true },
    image = { enabled = true },
		input = { enabled = true },
		words = { enabled = true },
		scope = { cursor = false },
		indent = {
			enabled = true,
			indent = { char = "┊" },
			scope = { char = "┊" },
		},
		notifier = {
			enabled = true,
			timeout = 5000,
		},
		picker = {
			enabled = true,
			ui_select = true,
			matcher = {
				frecency = false, -- useful but impacts performance
			},
			layout = {
				preset = "ivy_split",
			},
			formatters = {
				file = { icon_width = 3 },
			},
		},
		styles = {
			notification = {
				wo = { wrap = true }, -- Wrap notifications
			},
		},
	},

	keys = {

		-- Top Pickers & Explorer
		{
			"<leader><space>",
			function()
				Snacks.picker.smart()
			end,
			desc = "Smart Find Files",
		},
		{
			"<leader>,",
			function()
				Snacks.picker.buffers()
			end,
			desc = "List Buffers",
		},
		{
			"<leader>!",
			function()
				Snacks.picker.notifications()
			end,
			desc = "Notification History",
		},

		-- find
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Files",
		},
		{
			"<leader>f.",
			function()
				Snacks.picker.files({ hidden = true })
			end,
			desc = "Hidden Once",
		},
		{
			"<leader>fn",
			function()
				Snacks.picker.files({ cwd = "~/notes/" })
			end,
			desc = "Notes",
		},
		{
			"<leader>fc",
			function()
				Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "Config Files",
		},
		{
			"<leader>fr",
			function()
				Snacks.picker.recent()
			end,
			desc = "Recent",
		},
		{
			"<leader>fh",
			function()
				Snacks.picker.help()
			end,
			desc = "Help Pages",
		},
		{
			"<leader>fm",
			function()
				Snacks.picker.man()
			end,
			desc = "Man Pages",
		},
		{
			"<leader>fg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
		{
			"<leader>fp",
			function()
				Snacks.picker.projects()
			end,
			desc = "Projects",
		},
		{
			"<leader>fu",
			function()
				Snacks.picker.undo()
			end,
			desc = "Undo History",
		},

		-- Other
		{
			"<leader>z",
			function()
				Snacks.zen.zoom()
			end,
			desc = "Toggle Zoom",
		},
		{
			"<leader>rf",
			function()
				Snacks.rename.rename_file()
			end,
			desc = "Rename File",
		},
		{
			"<leader>tn",
			function()
				Snacks.notifier.hide()
			end,
			desc = "Dismiss All Notifications",
		},
		{
			"]]",
			function()
				Snacks.words.jump(vim.v.count1)
			end,
			desc = "Next Reference",
			mode = { "n", "t" },
		},
		{
			"[[",
			function()
				Snacks.words.jump(-vim.v.count1)
			end,
			desc = "Prev Reference",
			mode = { "n", "t" },
		},
	},
	init = function()
		vim.api.nvim_create_autocmd("User", {
			pattern = "VeryLazy",
			callback = function()
				-- Setup some globals for debugging (lazy-loaded)
				_G.dd = function(...)
					Snacks.debug.inspect(...)
				end
				_G.bt = function()
					Snacks.debug.backtrace()
				end
				vim.print = _G.dd -- Override print to use snacks for `:=` command

				Snacks.toggle.diagnostics():map("<leader>td")
				Snacks.toggle.inlay_hints():map("<leader>th")
				Snacks.toggle.dim():map("<leader>tz")
			end,
		})
	end,
}

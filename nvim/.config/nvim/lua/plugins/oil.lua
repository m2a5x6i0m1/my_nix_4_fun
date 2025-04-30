return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	config = function()
		require("oil").setup({
			win_options = { signcolumn = "yes" },
			view_options = { show_hidden = true },
			default_file_explorer = true,
			columns = {
				"icon",
			},
			keymaps = {
				["<Esc><Esc>"] = "actions.close",
				["gd"] = function()
					require("oil").set_columns({ "type", "size", "permissions" })
				end,
				["gl"] = function()
					require("oil").set_columns({ "icon" })
				end,
				["<M-j>"] = "actions.preview_scroll_down",
				["<M-k>"] = "actions.preview_scroll_up",
			},
		})

		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}

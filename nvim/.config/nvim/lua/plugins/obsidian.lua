return {
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("obsidian").setup({
			dir = "~/notes",
			ui = {
				enable = false,
				checkboxes = {
					[" "] = { char = "☐", hl_group = "ObsidianTodo" },
					["x"] = { char = "✔", hl_group = "ObsidianDone" },
				},
			},
			completion = {
				blink = true,
				min_chars = 1,
				score_offset = 100,
			},
			mappings = {
				-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
				["gf"] = {
					action = function()
						return require("obsidian").util.gf_passthrough()
					end,
					opts = { noremap = false, expr = true, buffer = true },
				},
				-- Smart action depending on context: follow link, show notes with tag, toggle checkbox, or toggle heading fold
				["<cr>"] = {
					action = function()
						return require("obsidian").util.smart_action()
					end,
					opts = { buffer = true, expr = true },
				},
			},
			daily_notes = {
				folder = "Daily",
				template = "Daily",
				default_tags = {},
			},
			templates = { folder = "Templates" },
			picker = { name = "snacks.pick" },
			new_notes_location = "notes_subdir",
			preferred_link_style = "wiki",

			note_frontmatter_func = function(note)
				local out = { tags = note.tags }
				if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
					for k, v in pairs(note.metadata) do
						out[k] = v
					end
				end
				return out
			end,
		})

		vim.keymap.set("n", "<leader>nn", "<cmd>ObsidianNew<cr>", { desc = "New" })
		vim.keymap.set("n", "<leader>nd", "<cmd>ObsidianToday<cr>", { desc = "Daily note" })
		vim.keymap.set("n", "<leader>nT", "<cmd>ObsidianNewFromTemplate<cr>", { desc = "New from template" })
		vim.keymap.set("n", "<leader>nb", "<cmd>ObsidianBacklinks<cr>", { desc = "list backlinks to note" })
		vim.keymap.set("n", "<leader>nt", "<cmd>ObsidianTemplate<cr>", { desc = "Insert template" })
		vim.keymap.set("n", "<leader>ng", "<cmd>ObsidianSearch<cr>", { desc = "Grep notes" })
	end,
}

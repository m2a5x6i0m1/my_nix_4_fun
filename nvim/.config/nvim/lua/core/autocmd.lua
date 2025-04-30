-- Highlighting yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Lsp keymaps
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local opts = { buffer = ev.buf, silent = false }

		opts.desc = "Show documentation for what is under cursor"
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

		opts.desc = "Show LSP references"
		vim.keymap.set("n", "gr", "<cmd>lua Snacks.picker.lsp_references()<CR>", opts) -- The best

		opts.desc = "Go to declaration"
		vim.keymap.set("n", "gD", "<cmd>lua Snacks.picker.lsp_declarations()<CR>", opts)

		opts.desc = "Show LSP definitions"
		vim.keymap.set("n", "gd", "<cmd>lua Snacks.picker.lsp_definitions()<CR>", opts)

		opts.desc = "Show LSP implementations"
		vim.keymap.set("n", "gi", "<cmd>lua Snacks.picker.lsp_implementations()<CR>", opts)

		opts.desc = "Show LSP type definitions"
		vim.keymap.set("n", "gy", "<cmd>lua Snacks.picker.lsp_type_definitions()<CR>", opts)

		opts.desc = "Restart LSP"
		vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)

		opts.desc = "Smart rename"
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

		opts.desc = "Show buffer diagnostics"
		vim.keymap.set("n", "<leader>db", "<cmd>lua Snacks.picker.diagnostics_buffer()<CR>", opts)

		opts.desc = "Show line diagnostics"
		vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, opts)

		opts.desc = "See available code actions"
		vim.keymap.set({ "n", "v" }, "<leader>da", vim.lsp.buf.code_action, opts)
	end,
})

-- Lsp progress bar
-- local progress = vim.defaulttable()
-- vim.api.nvim_create_autocmd("LspProgress", {
-- 	callback = function(ev)
-- 		local client = vim.lsp.get_client_by_id(ev.data.client_id)
-- 		local value = ev.data.params.value
-- 		if not client or type(value) ~= "table" then
-- 			return
-- 		end
-- 		local p = progress[client.id]
--
-- 		for i = 1, #p + 1 do
-- 			if i == #p + 1 or p[i].token == ev.data.params.token then
-- 				p[i] = {
-- 					token = ev.data.params.token,
-- 					msg = ("[%3d%%] %s%s"):format(
-- 						value.kind == "end" and 100 or value.percentage or 100,
-- 						value.title or "",
-- 						value.message and (" **%s**"):format(value.message) or ""
-- 					),
-- 					done = value.kind == "end",
-- 				}
-- 				break
-- 			end
-- 		end
--
-- 		local msg = {} ---@type string[]
-- 		progress[client.id] = vim.tbl_filter(function(v)
-- 			return table.insert(msg, v.msg) or not v.done
-- 		end, p)
--
-- 		local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
-- 		vim.notify(table.concat(msg, "\n"), "info", {
-- 			id = "lsp_progress",
-- 			title = client.name,
-- 			opts = function(notif)
-- 				notif.icon = #progress[client.id] == 0 and " "
-- 					or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
-- 			end,
-- 		})
-- 	end,
-- })
